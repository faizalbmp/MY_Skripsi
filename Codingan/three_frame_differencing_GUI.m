function varargout = three_frame_differencing_GUI(varargin)
% THREE_FRAME_DIFFERENCING_GUI MATLAB code for three_frame_differencing_GUI.fig
%      THREE_FRAME_DIFFERENCING_GUI, by itself, creates a new THREE_FRAME_DIFFERENCING_GUI or raises the existing
%      singleton*.
%
%      H = THREE_FRAME_DIFFERENCING_GUI returns the handle to a new THREE_FRAME_DIFFERENCING_GUI or the handle to
%      the existing singleton*.
%
%      THREE_FRAME_DIFFERENCING_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THREE_FRAME_DIFFERENCING_GUI.M with the given input arguments.
%
%      THREE_FRAME_DIFFERENCING_GUI('Property','Value',...) creates a new THREE_FRAME_DIFFERENCING_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before three_frame_differencing_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to three_frame_differencing_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help three_frame_differencing_GUI

% Last Modified by GUIDE v2.5 23-Nov-2017 11:56:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @three_frame_differencing_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @three_frame_differencing_GUI_OutputFcn, ...
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


% --- Executes just before three_frame_differencing_GUI is made visible.
function three_frame_differencing_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to three_frame_differencing_GUI (see VARARGIN)

% Choose default command line output for three_frame_differencing_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes three_frame_differencing_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = three_frame_differencing_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnPlay3fd.
function btnPlay3fd_Callback(hObject, eventdata, handles)
% hObject    handle to btnPlay3fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnPause3fd.
function btnPause3fd_Callback(hObject, eventdata, handles)
% hObject    handle to btnPause3fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnLoadVid.
function btnLoadVid_Callback(hObject, eventdata, handles)
% hObject    handle to btnLoadVid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in btnPlayVid.

[ video_file_name,video_file_path ] = uigetfile({'*'},'Pick a video file');      %;*.png;*.yuv;*.bmp;*.tif'},'Pick a file');
if(video_file_path == 0)
    return;
end
input_video_file = [video_file_path,video_file_name];
videoObject = VideoReader(input_video_file);
handles.videoObject = videoObject;
guidata(hObject,handles);

function btnPlayVid_Callback(hObject, eventdata, handles)
% hObject    handle to btnPlayVid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.

videoObject = handles.videoObject;
% axes(handles.axesVideo);
currAxes =axes ;
currAxes(handles.axesVideo);
axes(handles.axesVideo)
while hasFrame(videoObject)
    vidFrame = readFrame(videoObject);
    image(vidFrame, 'Parent', currAxes);
%     imshow(vidFrame);
%     drawnow;
    currAxes.Visible = 'off';
    pause(1/videoObject.FrameRate);
end

function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
