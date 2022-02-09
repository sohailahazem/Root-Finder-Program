function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 25-Nov-2021 23:25:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function equation_input_Callback(hObject, eventdata, handles)
% hObject    handle to equation_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equation_input as text
%        str2double(get(hObject,'String')) returns contents of equation_input as a double


% --- Executes during object creation, after setting all properties.
function equation_input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equation_input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in browse_button.
function browse_button_Callback(hObject, eventdata, handles)
% hObject    handle to browse_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename pathname] = uigetfile({'*.txt'},'File Selector');
full_path = strcat(pathname, filename);
eqn = fileread(full_path);
set(handles.path_text, 'String', full_path)
set(handles.equation_input, 'String', eqn)


function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iterations_Callback(hObject, eventdata, handles)
% hObject    handle to iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iterations as text
%        str2double(get(hObject,'String')) returns contents of iterations as a double


% --- Executes during object creation, after setting all properties.
function iterations_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epsilon_Callback(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilon as text
%        str2double(get(hObject,'String')) returns contents of epsilon as a double


% --- Executes during object creation, after setting all properties.
function epsilon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function start_time_Callback(hObject, eventdata, handles)
% hObject    handle to start_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of start_time as text
%        str2double(get(hObject,'String')) returns contents of start_time as a double


% --- Executes during object creation, after setting all properties.
function start_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to start_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function end_time_Callback(hObject, eventdata, handles)
% hObject    handle to end_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of end_time as text
%        str2double(get(hObject,'String')) returns contents of end_time as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to end_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in method_menu.
function method_menu_Callback(hObject, eventdata, handles)
% hObject    handle to method_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns method_menu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from method_menu
method = get(handles.method_menu, 'Value');
if(method == 3 || method == 4)
    set(handles.end_time,'Visible','Off');
    set(handles.text15,'Visible','Off');

else
    set(handles.end_time,'Visible','On');
    set(handles.text15,'Visible','On');

end



% --- Executes during object creation, after setting all properties.
function method_menu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to method_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function iterations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function eps_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eps_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function start_CreateFcn(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function end_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to end_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function method_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to method_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in findroot_button.
function findroot_button_Callback(hObject, eventdata, handles)
% hObject    handle to findroot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fn = str2func(strcat('@(x)',get(handles.equation_input, 'String')));
max_iterations = str2double(get(handles.iterations, 'String'));
eps = str2double(get(handles.epsilon, 'String'));
method = get(handles.method_menu, 'Value');
start = str2double(get(handles.start_time, 'String'));
end_time = str2double(get(handles.end_time, 'String'));


if (isnan(max_iterations))
    max_iterations = 50; % default maximum iterations
end
if (isnan(eps))
    eps = 0.00001; % default EPSILON
end

output_table = [];
execution_time = 0;
syms x;
diff_of_function = matlabFunction(diff(fn(x)));
switch(method)
    
    case 1 %Bisection Method
       set(handles.table,'ColumnName',{'i' 'Xl' 'f(Xl)' 'Xu' 'f(Xu)' 'Xr' 'f(Xr)' 'Ea'}); 
        if(fn(start) * fn(end_time) > 0)     
        set(handles.alert,'String','Can not use Bisection Method');
        return
        else
            set(handles.alert,'String','Bisection Method used successfully');
        end
       [output_table,execution_time, root, ea, tolerance_reached] = bisection(fn,start,end_time,eps,max_iterations);
    
    case 2 %False-Position
       set(handles.table,'ColumnName',{'i' 'Xl' 'f(Xl)' 'Xu' 'f(Xu)' 'Xr' 'f(Xr)' 'Ea'}); 
       if(fn(start) * fn(end_time) > 0)     
        set(handles.alert,'String','Can not use False-Position Method');
        return
       else
            set(handles.alert,'String','False-Position Method used successfully');
        end
       [output_table,execution_time, root, ea, tolerance_reached] = false_position(fn,start,end_time,eps,max_iterations);
    
    case 3 %Fixed_Point
       set(handles.table,'ColumnName',{'i', 'Xr_old', 'Xr', 'g(Xr_old)', 'g(Xr)','Ea'}); 
       if(diff_of_function(start) > 1)
         set(handles.alert,'String','Can not use given g(x) as it will diverge.');
        return
        else
            set(handles.alert,'String','Fixed-Point Method used successfully');
        end
       [output_table,execution_time, root, ea, tolerance_reached] = fixed_point(fn, start, eps, max_iterations);
       
    case 4 %Newton-Raphson
       set(handles.table,'ColumnName',{'i' 'Xr_old' 'Xr' 'f(Xr_old)' 'f(Xr)' 'Ea'});
        if(diff_of_function(start) == 0)
         set(handles.alert,'String','Can not use Newton-Raphson Method');
        return
        else
            set(handles.alert,'String','Newton-Raphson Method used successfully');
        end
       [output_table,execution_time, root, ea, tolerance_reached] = newton_raphson(start, eps, fn , max_iterations);
    
    case 5 %Secant
        set(handles.table,'ColumnName',{'i' 'Xi-1' 'Xi' 'f(Xi-1)' 'f(Xi)' 'Xi+1' 'f(Xi+1)' 'Ea'});
       [output_table,execution_time, root, ea, tolerance_reached] = secant(fn, start, end_time , eps, max_iterations);
     
end    
        set(handles.time,'String',execution_time); 
        set(handles.table, 'Data', output_table);
        set(handles.root,'String',root); 
        set(handles.error,'String',ea);
        if(tolerance_reached == 1)
             set(handles.flag,'String','Root not found to desired tolerance');
        else 
            set(handles.flag,'String','Root found to desired tolerance');
        end

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over method_menu.
function method_menu_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to method_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
