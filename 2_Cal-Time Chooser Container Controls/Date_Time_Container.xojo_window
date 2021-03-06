#tag Window
Begin ContainerControl Date_Time_Container
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &c9D9D9D00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   True
   Height          =   286
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   394
   Begin Timer ClockSecondHandTimer
      Enabled         =   True
      Height          =   "32"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Visible         =   True
      Width           =   "32"
   End
   Begin Separator Separator1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   255
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   236
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   97
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -1
      Visible         =   True
      Width           =   4
   End
   Begin Calendar_Container Calendar_Container1
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Enabled         =   True
      EraseBackground =   False
      HasBackColor    =   False
      Height          =   252
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   100
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   230
   End
   Begin Time_Container Time_Container1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      ClockSecondsCounter=   0
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   252
      HelpTag         =   ""
      HideAMPM        =   False
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   235
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   101
      TabPanelIndex   =   0
      TabStop         =   True
      TimeMode        =   0
      TimeModeFirstRunBool=   True
      Time_AMPM       =   "AM"
      Time_AMPM_Len   =   0
      Time_Hour       =   "12"
      Time_Hour_Len   =   0
      Time_Minute     =   "00"
      Time_Minute_Len =   0
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   156
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub mChangeLocalizedWindowTitle()
		  // ** MUST DETACH FROM DEMO WINDOW
		  
		  If Window IsA DateTimeWindow Then
		    
		    If DateTimeWindow(Window).VisiblePickers = Date_Time_Container.PickerElements_CalendarAndClock Then
		      TrueWindow.Title = Localized_ChooseBothTitle_Str
		      
		    Elseif DateTimeWindow(Window).VisiblePickers = Date_Time_Container.PickerElements_CalendarOnly Then
		      TrueWindow.Title = Localized_CalendarOnlyTitle_Str
		      
		    Elseif DateTimeWindow(Window).VisiblePickers =Date_Time_Container.PickerElements_ClockOnly Then
		      TrueWindow.Title = Localized_TimeOnlyTitle_Str
		      
		    End If
		    
		  End If
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mSetLocalization_ContainerTitle(inLocalizationInt as Integer)
		  Select Case inLocalizationInt
		  Case 0 // English
		    Localized_CalendarOnlyTitle_Str = "Choose Date"
		    Localized_ChooseBothTitle_Str = "Choose Date and Time"
		    Localized_TimeOnlyTitle_Str = "Choose Time"
		    Localized_Recurring_OnceOnly_Str = "Once Only"
		    Localized_Recurring_Every_Str = "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str = "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str = " of Every " // Leading and Trailing space is done purposely
		    
		  Case 1 // French
		    Localized_CalendarOnlyTitle_Str = "Choisissez la date"
		    Localized_ChooseBothTitle_Str = "Choisissez la date et l'heure"
		    Localized_TimeOnlyTitle_Str = "Choisissez l'heure"
		    Localized_Recurring_OnceOnly_Str =  "Une seule fois" // "Once Only"
		    Localized_Recurring_Every_Str =  "tous " // "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str =      "jour "  // "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str =   " de chaque "  // " of Every " // Leading and Trailing space is done purposely
		    
		  Case 2 // Swedish
		    Localized_CalendarOnlyTitle_Str = "Välj datum"
		    Localized_ChooseBothTitle_Str = "Välj Datum och tid"
		    Localized_TimeOnlyTitle_Str = "Välj Tid"
		    Localized_Recurring_OnceOnly_Str =  "En gång bara" // "Once Only"
		    Localized_Recurring_Every_Str =  "Varje " // "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str =      "dag "  // "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str =   " av varje "  // " of Every " // Leading and Trailing space is done purposely
		    
		  Case 3 // Italian
		    Localized_CalendarOnlyTitle_Str = "Scegli data"
		    Localized_ChooseBothTitle_Str = "Scegli data e ora"
		    Localized_TimeOnlyTitle_Str = "Scegli Ora"
		    Localized_Recurring_OnceOnly_Str =  "Solo una volta" // "Once Only"
		    Localized_Recurring_Every_Str =  "ogni " // "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str =      "giorno "  // "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str =   " di ogni "  // " of Every " // Leading and Trailing space is done purposely
		    
		  Case 4 // Spanish
		    Localized_CalendarOnlyTitle_Str = "Seleccionar fecha"
		    Localized_ChooseBothTitle_Str = "Seleccione Fecha y Hora"
		    Localized_TimeOnlyTitle_Str = "Seleccione Hora"
		    Localized_Recurring_OnceOnly_Str =  "Sólo una vez" // "Once Only"
		    Localized_Recurring_Every_Str =  "cada " // "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str =      "día "  // "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str =   " de cada "  // " of Every " // Leading and Trailing space is done purposely
		    
		  Case 5 // Dutch
		    Localized_CalendarOnlyTitle_Str = "Kies Datum"
		    Localized_ChooseBothTitle_Str = "Kies de datum en tijd"
		    Localized_TimeOnlyTitle_Str = "Kies Time"
		    Localized_Recurring_OnceOnly_Str =  "eenmalig" // "Once Only"
		    Localized_Recurring_Every_Str =  "iedere " // "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str =      "dag "  // "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str =   " van Elk "  // " of Every " // Leading and Trailing space is done purposely
		    
		  Case 6 // German
		    Localized_CalendarOnlyTitle_Str = "Bitte Datum auswählen"
		    Localized_ChooseBothTitle_Str = "Bitte Datum und Uhrzeit auswählen"
		    Localized_TimeOnlyTitle_Str = "Bitte Zeit auswählen"
		    Localized_Recurring_OnceOnly_Str = "Nur einmal"
		    Localized_Recurring_Every_Str = "Jeden " // Trailing space is done purposely
		    Localized_Recurring_Day_Str = "Tag " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str = " für jeden " // Leading and Trailing space is done purposely
		    
		  Case 7 // Afrikaans
		    Localized_CalendarOnlyTitle_Str = "kies Datum"
		    Localized_ChooseBothTitle_Str = "Kies Datum en Tyd"
		    Localized_TimeOnlyTitle_Str = "kies die tyd"
		    Localized_Recurring_OnceOnly_Str =  "slegs een keer" // "Once Only"
		    Localized_Recurring_Every_Str =  "elke " // "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str =      "dag "  // "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str =   " van elke "  // " of Every " // Leading and Trailing space is done purposely
		    
		  Case 8 // Polish
		    Localized_CalendarOnlyTitle_Str = "Wybierz datę"
		    Localized_ChooseBothTitle_Str = "Wybierz datę i godzinę"
		    Localized_TimeOnlyTitle_Str = "Wybierz godzinę"
		    Localized_Recurring_OnceOnly_Str =  "Tylko raz" // "Once Only"
		    Localized_Recurring_Every_Str =  "każdy " // "Every " // Trailing space is done purposely
		    Localized_Recurring_Day_Str =      "dzień "  // "Day " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str =   " z każdym "  // " of Every " // Leading and Trailing space is done purposely
		    
		  Case 9 // Portuguese
		    Localized_CalendarOnlyTitle_Str = "escolher data"
		    Localized_ChooseBothTitle_Str = "Escolha data e hora"
		    Localized_TimeOnlyTitle_Str = "Escolha Tempo"
		    Localized_Recurring_OnceOnly_Str = "Once Only"
		    Localized_Recurring_Every_Str = "cada " // Trailing space is done purposely
		    Localized_Recurring_Day_Str = "dia " // Trailing space is done purposely
		    Localized_Recurring_of_Every_Str = " de cada " // Leading and Trailing space is done purposely
		    
		  End Select
		  
		  mChangeLocalizedWindowTitle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mSetupForBothPickers()
		  if Window isa DateTimeWindow then
		    window.Width = 394
		    window.Height = 286
		    
		    #If TargetMacOS Then
		      DateTimeWindow(Window).Cancel_Button.Left = 126
		      DateTimeWindow(Window).Finished_Button.Left = 200
		    #ElseIf TargetWin32 Then
		      DateTimeWindow(Window).Cancel_Button.Left = 200
		      DateTimeWindow(Window).Finished_Button.Left = 126
		    #endif
		    
		    TrueWindow.Title = Localized_ChooseBothTitle_Str
		  end if
		  
		  Calendar_Container1.Enabled = True
		  Calendar_Container1.Visible = True
		  Time_Container1.Left = 235
		  Time_Container1.Enabled = True
		  Time_Container1.Visible = True
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mSetupForCalendarPickerOnly()
		  if window isa DateTimeWindow then
		    window.Width = 236
		    window.Height = 286
		    
		    #If TargetMacOS Then
		      DateTimeWindow(Window).Cancel_Button.Left = 50
		      DateTimeWindow(Window).Finished_Button.Left = 124
		    #Elseif TargetWin32 Then
		      DateTimeWindow(Window).Cancel_Button.Left = 124
		      DateTimeWindow(Window).Finished_Button.Left = 50
		    #endif
		    
		    TrueWindow.Title = Localized_CalendarOnlyTitle_Str
		  end if
		  
		  Calendar_Container1.Enabled = True
		  Calendar_Container1.Visible = True
		  Time_Container1.Enabled = False
		  Time_Container1.Visible = False
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mSetupForTimePickerOnly()
		  if window isa DateTimeWindow then
		    window.Width = 236
		    window.Height = 286
		    #If TargetMacOS Then
		      DateTimeWindow(Window).Cancel_Button.Left = 50
		      DateTimeWindow(Window).Finished_Button.Left = 124
		    #Elseif TargetWin32 Then
		      DateTimeWindow(Window).Cancel_Button.Left = 124
		      DateTimeWindow(Window).Finished_Button.Left = 50
		    #endif
		    TrueWindow.Title = Localized_TimeOnlyTitle_Str
		  end if
		  
		  Time_Container1.Enabled = True
		  Time_Container1.Visible = True
		  Time_Container1.Left = DateTimeWindow(Window).Width/2-Time_Container1.Width/2
		  //
		  Calendar_Container1.Enabled = False
		  Calendar_Container1.Visible = False
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Setter
			Set
			  Select Case value
			    
			  Case True
			    Calendar_Container1.Calendar1.AllowMultipleSelections = True
			    
			  Case False
			    Calendar_Container1.Calendar1.AllowMultipleSelections = False
			    
			  End Select
			End Set
		#tag EndSetter
		AllowMultipleCalendarSelections As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Time_Container1.Clock1.BorderColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Time_Container1.Clock1.BorderColor = value
			End Set
		#tag EndSetter
		ClockFaceBorderColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Time_Container1.Clock1.HourCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  if value=12 then
			    Time_Container1.Clock1.HourCount=12
			  elseif value = 24 then
			    Time_Container1.Clock1.HourCount = 24
			  end if
			End Set
		#tag EndSetter
		ClockFaceHourCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Time_Container1.Clock1.TextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Time_Container1.Clock1.TextColor = value
			End Set
		#tag EndSetter
		ClockFaceTextColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Time_Container1.Clock1.Font
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Time_Container1.Clock1.Font = value
			End Set
		#tag EndSetter
		ClockFaceTextFont As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Time_Container1.Clock1.ClockFaceType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Time_Container1.Clock1.ClockFaceType = value
			  if value=Date_Time_Container.ClockFaceType_Dynamic_24hr then
			    Time_Container1.Clock1.HourCount=24
			    Time_Container1.TimeMode = 24
			  elseif value=Date_Time_Container.ClockFaceType_Dynamic_12hr Then
			    Time_Container1.Clock1.HourCount=12
			    Time_Container1.TimeMode = 12
			  end if
			  me.Invalidate(false)
			End Set
		#tag EndSetter
		ClockFaceType As integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Time_Container1.Clock1.ClockHandColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Time_Container1.Clock1.ClockHandColor = value
			End Set
		#tag EndSetter
		ClockHandColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool=value
			  
			  Calendar_Container1.Calendar1.Invalidate(False)
			  Calendar_Container1.Calendar1.UPDATE_MonthDays
			  Calendar_Container1.Calendar1.UPDATE_MapDaysToCalSlots
			End Set
		#tag EndSetter
		IncludePrevNextMonthDays As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLocalizationInt
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLocalizationInt = value
			  
			  // Create the Localized Month List
			  Me.Calendar_Container1.Calendar1.mBuildLocalizedMonthList(mLocalizationInt)
			  // Create the Localized Day of the Week List
			  Me.Calendar_Container1.Calendar1.mBuildLocalizedDayOfWeekList(mLocalizationInt)
			  
			  // Load the Localized Month List to the PopUp Menu
			  Me.Calendar_Container1.Calendar1.mLoad_MonthList()
			  
			  // Load the Localized Day of the Week Abbreviation List to the Calendar
			  Me.Calendar_Container1.Calendar1.mBuild_LocalizedDayOfWeek_Arrays(mLocalizationInt)
			  
			  // Create the Localized Window/Container Title's
			  Me.mSetLocalization_ContainerTitle(mLocalizationInt)
			  
			  // Start Calendar on Today's Date
			  me.Calendar_Container1.mTakeMeToTodaysDate
			  
			End Set
		#tag EndSetter
		LocalizationInt As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mLocalizationInt As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private MultiSelectionTest As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mVisiblePickers As integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim d as new date(Calendar_Container1.Calendar1.SelectedDate)
			  
			  if Time_Container1.Time_AMPM="AM" then
			    if Time_Container1.Time_Hour="12" then
			      d.Hour=0
			    else
			      d.Hour=val(Time_Container1.Time_Hour)
			    end if
			  else
			    if Time_Container1.Time_Hour="12" Then
			      d.Hour=val(Time_Container1.Time_Hour)
			    else
			      d.Hour=val(Time_Container1.Time_Hour)+12
			    end if
			  end if
			  d.Minute=val(Time_Container1.Time_Minute)
			  Return d
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Calendar_Container1.Calendar1.SelectedDate=value
			  
			  if value.Hour<12 then
			    Time_Container1.Time_AMPM="AM"
			  else
			    Time_Container1.Time_AMPM="PM"
			  end if
			  Time_Container1.Time_Minute=format(value.Minute,"00")
			  
			  if value.Hour=0 then
			    Time_Container1.Time_Hour="12"
			  elseif value.Hour>12 then
			    Time_Container1.Time_Hour=str(value.Hour-12)
			  else
			    Time_Container1.Time_Hour=str(value.Hour)
			  end if
			End Set
		#tag EndSetter
		SelectedDate As Date
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		TEST As STRING
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Time_Container1.Clock1.UseGraphicalClockHands
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  Time_Container1.Clock1.UseGraphicalClockHands=value
			  
			  Time_Container1.Clock1.Invalidate(false)
			End Set
		#tag EndSetter
		UseGraphicalClockHands As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mVisiblePickers
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mVisiblePickers = value
			  select case value
			  case PickerElements_CalendarAndClock
			    mSetupForBothPickers
			  case PickerElements_CalendarOnly
			    mSetupForCalendarPickerOnly
			  case PickerElements_ClockOnly
			    mSetupForTimePickerOnly
			  end Select
			  self.Invalidate(false)
			End Set
		#tag EndSetter
		VisiblePickers As integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool=value
			  Calendar_Container1.Calendar1.UPDATE_MonthDays
			  Calendar_Container1.Calendar1.UPDATE_MapDaysToCalSlots
			  
			  Calendar_Container1.Calendar1.Invalidate(false)
			End Set
		#tag EndSetter
		WeekStartsOnMonday As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = ClockFaceType_Antique, Type = Double, Dynamic = False, Default = \"7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ClockFaceType_Chrome, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ClockFaceType_Dynamic_12hr, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ClockFaceType_Dynamic_24hr, Type = Double, Dynamic = False, Default = \"5", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ClockFaceType_GoogleStyle, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ClockFaceType_Modern, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ClockFaceType_Roman, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ClockFaceType_Standard, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PickerElements_CalendarAndClock, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PickerElements_CalendarOnly, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = PickerElements_ClockOnly, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events ClockSecondHandTimer
	#tag Event
		Sub Action()
		  // This controls the Clock's Second Hand
		  
		  Time_Container1.ClockSecondsCounter = Time_Container1.ClockSecondsCounter + 1
		  if Time_Container1.ClockSecondsCounter = 0 Then
		    Time_Container1.ClockSecondsCounter = -1
		  Elseif Time_Container1.ClockSecondsCounter = 60 Then
		    Time_Container1.ClockSecondsCounter = 0
		  End if
		  
		  Time_Container1.Clock1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Calendar_Container1
	#tag Event
		Sub SelectedDate(inSelectedDate as Date)
		  // THIS EVENT IS PASSED THE SELECTED DATE AS A DATE OBJECT
		  
		  // EXAMPLE RESULTS USAGE:
		  //MsgBox "The selected date is: " + inSelectedDate.SQLDateTime
		  //MsgBox "The selected date is: " + inSelectedDate.AbbreviatedDate
		End Sub
	#tag EndEvent
	#tag Event
		Sub Recurring_Selection(inSelectedRecurring as String)
		  // USE THIS EVENT TO EXTRACT YOUR RECURRING SELECTION
		  
		  // EXAMPLE RESULTS USAGE:
		  // MsgBox "Recurring Selection: " +EndOfLine + "  " + inSelectedRecurring
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Time_Container1
	#tag Event
		Sub SelectedTime(inHours as String, inMinutes as String, optional inAMPM as String)
		  // ASSIGN TIME BACK TO SELECTEDDATE  DATE PROPERTY
		  SelectedDate.Hour = CDbl(inHours)
		  SelectedDate.Minute = CDbl(inMinutes)
		  // ALSO PASSING TIME AS A STRING INTO THIS EVENT FOR MAXIMUM FLEXIBILITY
		  Dim selectedHour as String  = inHours
		  Dim selectedMinutes as string = inMinutes
		  Dim selectedAMPM as string = inAMPM
		  
		  
		  // EXAMPLE RESULTS USAGE:
		  
		  // 24 HOUR TIME:
		  //Dim TimeTwentyfour as String = SelectedDate.SQLDateTime
		  //MsgBox "Selected 24 Hour Time: " + EndOfLine +"   " + TimeTwentyfour
		  
		  // 12 HOUR TIME:
		  //Dim TimeTwelve as String  = SelectedDate.LongTime
		  //MsgBox "Selected 12 Hour Time: " + EndOfLine +"   " + TimeTwelve
		  
		  // CUSTOM TIME:
		  // Dim CustomTime as String = "("+selectedHour+":"+selectedMinutes+"  " + selectedAMPM+")"
		  //MsgBox "Selected Custom Time Format: " + EndOfLine +"   " +  CustomTime
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowMultipleCalendarSelections"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceBorderColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceHourCount"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceTextColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceTextFont"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceType"
		Group="Behavior"
		Type="integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Chrome"
			"1 - Roman"
			"2 - Standard"
			"3 - GoogleStyle"
			"4 - Modern"
			"5 - Dynamic_12hr"
			"6 - Dynamic_24hr"
			"7 - Antique"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockHandColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IncludePrevNextMonthDays"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LocalizationInt"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TEST"
		Group="Behavior"
		Type="STRING"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseGraphicalClockHands"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VisiblePickers"
		Group="Behavior"
		Type="integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - CalendarOnly"
			"1 - ClockOnly"
			"2 - CalendarAndClock"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="WeekStartsOnMonday"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
