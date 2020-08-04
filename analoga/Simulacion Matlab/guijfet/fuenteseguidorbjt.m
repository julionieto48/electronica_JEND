function varargout = fuenteseguidorbjt(varargin)
% FUENTESEGUIDORBJT MATLAB code for fuenteseguidorbjt.fig
%      FUENTESEGUIDORBJT, by itself, creates a new FUENTESEGUIDORBJT or raises the existing
%      singleton*.
%
%      H = FUENTESEGUIDORBJT returns the handle to a new FUENTESEGUIDORBJT or the handle to
%      the existing singleton*.
%
%      FUENTESEGUIDORBJT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUENTESEGUIDORBJT.M with the given input arguments.
%
%      FUENTESEGUIDORBJT('Property','Value',...) creates a new FUENTESEGUIDORBJT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuenteseguidorbjt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuenteseguidorbjt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuenteseguidorbjt

% Last Modified by GUIDE v2.5 18-Sep-2018 21:11:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuenteseguidorbjt_OpeningFcn, ...
                   'gui_OutputFcn',  @fuenteseguidorbjt_OutputFcn, ...
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


% --- Executes just before fuenteseguidorbjt is made visible.
function fuenteseguidorbjt_OpeningFcn(hObject, eventdata, handles, varargin)



% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuenteseguidorbjt (see VARARGIN)

% Choose default command line output for fuenteseguidorbjt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuenteseguidorbjt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fuenteseguidorbjt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function vdd_Callback(hObject, eventdata, handles)
% hObject    handle to vdd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vdd as text
%        str2double(get(hObject,'String')) returns contents of vdd as a double


% --- Executes during object creation, after setting all properties.
function vdd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vdd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vd_Callback(hObject, eventdata, handles)
% hObject    handle to vd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vd as text
%        str2double(get(hObject,'String')) returns contents of vd as a double


% --- Executes during object creation, after setting all properties.
function vd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vs_Callback(hObject, eventdata, handles)
% hObject    handle to vs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vs as text
%        str2double(get(hObject,'String')) returns contents of vs as a double


% --- Executes during object creation, after setting all properties.
function vs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function voltin_Callback(hObject, eventdata, handles)
% hObject    handle to voltin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voltin as text
%        str2double(get(hObject,'String')) returns contents of voltin as a double


% --- Executes during object creation, after setting all properties.
function voltin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voltin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function voltalamp_Callback(hObject, eventdata, handles)
% hObject    handle to voltalamp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voltalamp as text
%        str2double(get(hObject,'String')) returns contents of voltalamp as a double


% --- Executes during object creation, after setting all properties.
function voltalamp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voltalamp (see GCBO)
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
Vdd = get(handles.vdd,'String');Vdd = str2num(Vdd); 
Vd = get(handles.vd,'String');Vd = str2num(Vd);
Vs = get(handles.vs,'String');Vs = str2num(Vs);
Av = get(handles.av,'String');Av = str2num(Av);
vo_maxpico = Vdd - Vd ;
vi_maxpico =  vo_maxpico/Av;

figure('Name','Se?ales Maximas Jfet','NumberTitle','off');
subplot(2,1,1);ylim([1 Vdd+1]);grid on;
x = linspace(0,10);xlabel('t');ylabel('Volt');

a1=[0 2 4 6 8 10]; b1=[Vdd Vdd Vdd Vdd Vdd Vdd];plot(a1,b1);hold on;
a2=[0 2 4 6 8 10]; b2=[Vd Vd Vd Vd Vd Vd];plot(a2,b2);hold on;

a3=[0 2 4 6 8 10]; b3=[Vs Vs Vs Vs Vs Vs];plot(a3,b3);hold on;

entrada = vi_maxpico*sin(x*5)+Vd;plot(x,entrada);hold on;
salida = vo_maxpico*sin(x*5) +Vd; plot(x,salida);hold on; grid on; legend('Vdd','Vd','Vs','Entrada','salida')


subplot(2,1,2); ylim([1 Vdd+1]);
x = linspace(0,10);xlabel('t');ylabel('Volt');


entrada = vi_maxpico*sin(x*5)+Vd;plot(x,entrada);hold on;
salida = -vo_maxpico*sin(x*5) +Vd; plot(x,salida);hold on; grid on; legend('Entrada','salida')






% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
vi_maxpico = get(handles.voltin,'String'); vi_maxpico = str2num(vi_maxpico);
vo_maxpico = get(handles.voltalamp,'String');vo_maxpico = str2num(vo_maxpico);
Av = vo_maxpico/vi_maxpico; set(handles.av2,'String',Av);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
Vdd = get(handles.vdd,'String');Vdd = str2num(Vdd); 
Vd = get(handles.vd,'String');Vd = str2num(Vd);
Vs = get(handles.vs,'String');Vs = str2num(Vs);
Av = get(handles.av2,'String');Av = str2num(Av);
vi_maxpico = get(handles.voltin,'String'); vi_maxpico = str2num(vi_maxpico);
vo_maxpico = vi_maxpico* Av;

figure('Name','I/O BJT','NumberTitle','off');
subplot(2,1,1);ylim([1 Vdd+1]);grid on;
x = linspace(0,10);xlabel('t');ylabel('Volt');

a1=[0 2 4 6 8 10]; b1=[Vdd Vdd Vdd Vdd Vdd Vdd];plot(a1,b1);hold on;
a2=[0 2 4 6 8 10]; b2=[Vd Vd Vd Vd Vd Vd];plot(a2,b2);hold on;

a3=[0 2 4 6 8 10]; b3=[Vs Vs Vs Vs Vs Vs];plot(a3,b3);hold on;

entrada = vi_maxpico*sin(x*5)+Vd;plot(x,entrada);hold on;
salida = vo_maxpico*sin(x*5) +Vd; plot(x,salida);hold on; grid on; legend('Vdd','Vd','Vs','Entrada','salida');
xlabel('t');ylabel('Volt');
subplot(2,1,2); ylim([1 Vdd+1]);
x = linspace(0,10);xlabel('t');ylabel('Volt');



entrada = vi_maxpico*sin(x*5)+Vd;plot(x,entrada);hold on;
salida = -vo_maxpico*sin(x*5) +Vd; plot(x,salida);hold on; grid on; legend('Entrada','salida')
xlabel('t');ylabel('Volt');



% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
