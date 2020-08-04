function varargout = untitled1(varargin)
% UNTITLED1 MATLAB code for untitled1.fig
%      UNTITLED1, by itself, creates a new UNTITLED1 or raises the existing
%      singleton*.
%
%      H = UNTITLED1 returns the handle to a new UNTITLED1 or the handle to
%      the existing singleton*.
%
%      UNTITLED1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED1.M with the given input arguments.
%
%      UNTITLED1('Property','Value',...) creates a new UNTITLED1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled1

% Last Modified by GUIDE v2.5 19-Sep-2018 16:18:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled1_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled1_OutputFcn, ...
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


% --- Executes just before untitled1 is made visible.
function untitled1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled1 (see VARARGIN)

% Choose default command line output for untitled1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
Vcc = get(handles.vcc,'String');Vcc = str2num(Vcc);
Vc = get(handles.vc,'String');Vc = str2num(Vc);
Ve = get(handles.vcc,'String');Ve = str2num(Ve);
Av = get(handles.av,'String');Av = str2num(Av);

vo_maxpico = Vcc - Vc ;
vi_maxpico =  vo_maxpico/Av;

figure('Name','Senales Maximas BJT','NumberTitle','off');
subplot(2,1,1);ylim([1 Vcc+1]);grid on;
x = linspace(0,10);xlabel('t');ylabel('Volt');

a1=[0 2 4 6 8 10]; b1=[Vcc Vcc Vcc Vcc Vcc Vcc];plot(a1,b1);hold on;
a2=[0 2 4 6 8 10]; b2=[Vc Vc Vc Vc Vc Vc];plot(a2,b2);hold on;

a3=[0 2 4 6 8 10]; b3=[Ve Ve Ve Ve Ve Ve];plot(a3,b3);hold on;

entrada = vi_maxpico*sin(x*5)+Vc;plot(x,entrada);hold on;
salida = vo_maxpico*sin(x*5) +Vc; plot(x,salida);hold on; grid on; legend('Vcc','Vc','Ve','Entrada','salida')




subplot(2,1,2); ylim([1 Vcc+1]);
x = linspace(0,10);xlabel('t');ylabel('Volt');



entrada = vi_maxpico*sin(x*5)+Vc;plot(x,entrada);hold on;
salida = -vo_maxpico*sin(x*5) +Vc; plot(x,salida);hold on; grid on; legend('Entrada','salida')





function vcc_Callback(hObject, eventdata, handles)
% hObject    handle to vcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vcc as text
%        str2double(get(hObject,'String')) returns contents of vcc as a double


% --- Executes during object creation, after setting all properties.
function vcc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vcc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vc_Callback(hObject, eventdata, handles)
% hObject    handle to vc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vc as text
%        str2double(get(hObject,'String')) returns contents of vc as a double


% --- Executes during object creation, after setting all properties.
function vc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ve_Callback(hObject, eventdata, handles)
% hObject    handle to ve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ve as text
%        str2double(get(hObject,'String')) returns contents of ve as a double


% --- Executes during object creation, after setting all properties.
function ve_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function av_Callback(hObject, eventdata, handles)
% hObject    handle to av (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of av as text
%        str2double(get(hObject,'String')) returns contents of av as a double


% --- Executes during object creation, after setting all properties.
function av_CreateFcn(hObject, eventdata, handles)
% hObject    handle to av (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
