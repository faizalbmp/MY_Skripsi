function varargout = TAGUI(varargin)
% TAGUI MATLAB code for TAGUI.fig
%      TAGUI, by itself, creates a new TAGUI or raises the existing
%      singleton*.
%
%      H = TAGUI returns the handle to a new TAGUI or the handle to
%      the existing singleton*.
%
%      TAGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAGUI.M with the given input arguments.
%
%      TAGUI('Property','Value',...) creates a new TAGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TAGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TAGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TAGUI

% Last Modified by GUIDE v2.5 13-Nov-2017 13:40:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TAGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @TAGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TAGUI is made visible.
function TAGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TAGUI (see VARARGIN)

% Choose default command line output for TAGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TAGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TAGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in popRegion.
function popRegion_Callback(hObject, eventdata, handles)
% hObject    handle to popRegion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popRegion contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popRegion


% --- Executes during object creation, after setting all properties.
function popRegion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popRegion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnLBPTOP.
function btnLBPTOP_Callback(hObject, eventdata, handles)
% hObject    handle to btnLBPTOP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnLoad.
function btnLoad_Callback(hObject, eventdata, handles)
% hObject    handle to btnLoad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


[ video_file_name,video_file_path ] = uigetfile({'*'},'Pick a video file');      %;*.png;*.yuv;*.bmp;*.tif'},'Pick a file');
if(video_file_path == 0)
    return;
end
input_video_file = [video_file_path,video_file_name];
% Acquiring video
v = VideoReader(input_video_file);
v.CurrentTime = 0;

% Display first frame
frame_1 = readFrame(v);
axes(handles.axesvideo);
imshow(frame_1);
drawnow;
axis(handles.axesvideo,'off');

handles.v = v;
guidata(hObject,handles);

% --- Executes on button press in btnPlay.
function btnPlay_Callback(hObject, eventdata, handles)
% hObject    handle to btnPlay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

v = handles.v;
info=get(v);

% % set(handles.btnStop,'Enable','on');
% % set(handles.btnPlay,'Enable','off');
axes(handles.axesvideo);


% for frameCount = 2:videoObject.NumberOfFrames
%     % Display frames
% %     set(handles.text3,'String',num2str(frameCount));
for frameCount = 1:floor(v.Duration)*info.FrameRate
    frame = frameIndex(v,frameCount);
    imshow(frame);
    drawnow;
    pause(1/v.FrameRate);
    handles.frameCount = frameCount;
    guidata(hObject,handles);
end

% --- Executes on button press in btnStop.
function btnStop_Callback(hObject, eventdata, handles)
% hObject    handle to btnStop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

axes(handles.axesvideo);
if(strcmp(get(handles.btnStop,'String'),'Stop'))
    set(handles.btnStop,'String','start');
    uiwait();
else
    set(handles.btnStop,'String','Stop');
    uiresume();
end
% global videoObject

% --- Executes on button press in btnProcess3FD.

function btnProcess3FD_Callback(hObject, eventdata, handles)
% hObject    handle to btnProcess3FD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
v = handles.v;
frameCount = handles.frameCount
info=get(v);

frameMove = three_frame_differencing(v,frameCount);

%%

% Display first frame
framevideo = frameIndex(v,frameCount);
axes(handles.axes3FD);
bboxestemp = regionprops(frameMove,'Area','BoundingBox');
bboxes = struct;
for i=1 : size(bboxes)
    if bboxestemp(i).Area >= 200
        bboxes(i).Area = bboxestemp(i).Area
        bboxes(i).BoundingBox = bboxestemp(i).BoundingBox
    end
end
imshow(framevideo);
hold on;
for k=1 : length(bboxes)
    
    CurrBB = bboxes(k).BoundingBox;
    rectangle('Position',[CurrBB(1),CurrBB(2),CurrBB(3),CurrBB(4),],...
    'EdgeColor' , 'r',...
	'LineWidth', 3)
end
hold off;
drawnow;
axis(handles.axes3FD,'off');

handles.frameLBP = frameLBP;
for k=1 : length(bboxes)
    
    CurrBB = bboxes(k).BoundingBox;
    breadth = CurrBB(3) + 1;
    len = CurrBB(4) + 1;
    target = uint8(zeros([len breadth]));
    target = image(CurrBB(2):CurrBB(4)+CurrBB(2)-1,CurrBB(1):CurrBB(3)+CurrBB(1)-1);
    
end
guidata(hObject,handles);


% --- Executes on button press in showRegionLBP.
function showRegionLBP_Callback(hObject, eventdata, handles)
% hObject    handle to showRegionLBP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
