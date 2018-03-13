
/***************************************************************************************/
/***************************************************************************************/
/***************************** Macrotize Long Strings **********************************/
/***************************************************************************************/
/***************************************************************************************/



%let droprenamemv = (drop = CRSDepTime DepTime CRSArrTime ArrTime FirstDepTime WheelsOff WheelsOn Div1WheelsOn Div1WheelsOff Div2WheelsOn 
Div2WheelsOff Div3WheelsOn Div3WheelsOff Div4WheelsOn Div4WheelsOff Div5WheelsOn Div5WheelsOff 
rename =(CRSDepTimeF=CRSDepTime DepTimeF=DepTime CRSArrTimeF=CRSArrTime ArrTimeF=ArrTime FirstDepTimeF=FirstDepTime 
WheelsOffF=WheelsOff WheelsOnF=WheelsOn Div1WheelsOnF=Div1WheelsOn Div1WheelsOffF=Div1WheelsOff Div2WheelsOnF=Div2WheelsOn 
Div2WheelsOffF=Div2WheelsOff Div3WheelsOnF=Div3WheelsOn Div3WheelsOffF=Div3WheelsOff Div4WheelsOnF=Div4WheelsOn 
Div4WheelsOffF=Div4WheelsOff Div5WheelsOnF=Div5WheelsOn Div5WheelsOffF=Div5WheelsOff) ) ;

%let lengthmv = length Year 4. Quarter 4. Month 4. DayofMonth 4. DayOfWeek 4. FlightDate 8. UniqueCarrier $8. AirlineID  $4. 
Carrier  $4. TailNum  $10. FlightNum  4. OriginAirportID  $8. OriginAirportSeqID  $8. OriginCityMarketID  $6. Origin  $32. 
OriginCityName  $32. OriginState  $32. OriginStateFips  $32. OriginStateName  $32. OriginWac  $32. DestAirportID  $6. 
DestAirportSeqID  $6. DestCityMarketID  $6. Dest  $32. DestCityName  $32. DestState  $32. DestStateFips  $32. 
DestStateName  $32. DestWac  $32. CRSDepTime  $8. CRSDepTimeF 8. DepTime  $8. DepTimeF  8. DepDelay 4. DepDelayMinutes 4. 
DepDel15 4. DepartureDelayGroups 4. DepTimeBlk  $9. TaxiOut 4. WheelsOff  $8. WheelsOffF  8. WheelsOn  $8. WheelsOnF  8. 
TaxiIn 4. CRSArrTime  $8. CRSArrTimeF  8. ArrTime  $8. ArrTimeF  8. ArrDelay 4. ArrDelayMinutes 4. ArrDel15 4. 
ArrivalDelayGroups  4. ArrTimeBlk  $9. Cancelled 4. CancellationCode  $8. Diverted  4. CRSElapsedTime 4. ActualElapsedTime 4. 
AirTime 4. Flights 4. Distance 4. DistanceGroup 4. CarrierDelay 4. WeatherDelay 4. NASDelay 4. SecurityDelay 4. LateAircraftDelay 4. 
FirstDepTime  $8. FirstDepTimeF  8. TotalAddGTime 4. LongestAddGTime 4. DivAirportLandings 4. DivReachedDest 4. DivActualElapsedTime 4. DivArrDelay 4. 
DivDistance 4. Div1Airport  $8. Div1AirportID  $8. Div1AirportSeqID  $8. Div1WheelsOn  $8. Div1WheelsOnF  8. Div1TotalGTime 4. Div1LongestGTime 4. 
Div1WheelsOff  $8. Div1WheelsOffF  8. Div1TailNum  $8. Div2Airport  $8. Div2AirportID  $8. Div2AirportSeqID  $8. Div2WheelsOn  $8. Div2WheelsOnF  8. Div2TotalGTime 4. 
Div2LongestGTime 4. Div2WheelsOff  $8. Div2WheelsOffF  8. Div2TailNum  $8. Div3Airport  $8. Div3AirportID  $8. Div3AirportSeqID  $8. Div3WheelsOn  $8. Div3WheelsOnF  8. 
Div3TotalGTime 4. Div3LongestGTime 4. Div3WheelsOff  $8. Div3WheelsOffF  8. Div3TailNum  $8. Div4Airport  $8. Div4AirportID  $8. Div4AirportSeqID  $8. 
Div4WheelsOn  $8. Div4WheelsOnF  8. Div4TotalGTime 4. Div4LongestGTime 4. Div4WheelsOff  $8. Div4WheelsOffF  8. Div4TailNum  $8. Div5Airport  $8. Div5AirportID  $8. 
Div5AirportSeqID  $8. Div5WheelsOn  $8. Div5WheelsOnF  8. Div5TotalGTime 4. Div5LongestGTime 4. Div5WheelsOff  $8. Div5WheelsOffF  8. Div5TailNum   $8.  ; 



%let inputmv = input Year Quarter Month DayofMonth DayOfWeek FlightDate :yymmdd10. UniqueCarrier $ AirlineID $ Carrier $ TailNum $ FlightNum 
OriginAirportID $ OriginAirportSeqID $ OriginCityMarketID $ Origin $ OriginCityName $ OriginState $ OriginStateFips $ 
OriginStateName $ OriginWac $ DestAirportID $ DestAirportSeqID $ DestCityMarketID $ Dest $ DestCityName $ DestState $ 
DestStateFips $ DestStateName $ DestWac $ CRSDepTime $ DepTime $ DepDelay DepDelayMinutes DepDel15 DepartureDelayGroups 
DepTimeBlk $ TaxiOut WheelsOff $ WheelsOn $ TaxiIn CRSArrTime $ ArrTime $ ArrDelay ArrDelayMinutes ArrDel15 ArrivalDelayGroups 
ArrTimeBlk $ Cancelled CancellationCode $ Diverted CRSElapsedTime ActualElapsedTime AirTime Flights Distance DistanceGroup 
CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay FirstDepTime $ TotalAddGTime LongestAddGTime 
DivAirportLandings DivReachedDest DivActualElapsedTime DivArrDelay DivDistance Div1Airport $ Div1AirportID $ Div1AirportSeqID $ 
Div1WheelsOn $ Div1TotalGTime Div1LongestGTime Div1WheelsOff $ Div1TailNum $ Div2Airport $ Div2AirportID $ Div2AirportSeqID $ 
Div2WheelsOn $ Div2TotalGTime Div2LongestGTime Div2WheelsOff $ Div2TailNum $ Div3Airport $ Div3AirportID $ Div3AirportSeqID $ 
Div3WheelsOn $ Div3TotalGTime Div3LongestGTime Div3WheelsOff $ Div3TailNum $ Div4Airport $ Div4AirportID $ Div4AirportSeqID $ 
Div4WheelsOn $ Div4TotalGTime Div4LongestGTime Div4WheelsOff $ Div4TailNum $ Div5Airport $ Div5AirportID $ Div5AirportSeqID $ 
Div5WheelsOn $ Div5TotalGTime Div5LongestGTime Div5WheelsOff $ Div5TailNum  $ ;

%macro timevars ;
if CRSDepTime="2400" then do ;
	CRSDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSDepTimeF time5. ;
			CRSDepTimeF=input(substr(CRSDepTime,1,2)||":"||substr(CRSDepTime,3,2), time5.) ; end ;
if DepTime="2400" then do ;
	DepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format DepTimeF time5. ;
			DepTimeF=input(substr(DepTime,1,2)||":"||substr(DepTime,3,2), time5.) ; end ;
if CRSArrTime="2400" then do ;
	CRSArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format CRSArrTimeF time5. ;
			CRSArrTimeF=input(substr(CRSArrTime,1,2)||":"||substr(CRSArrTime,3,2), time5.) ; end ;
if ArrTime="2400" then do ;
	ArrTimeF=input("23:59", time5.) ; end ;
		else do ;
			format ArrTimeF time5. ;
			ArrTimeF=input(substr(ArrTime,1,2)||":"||substr(ArrTime,3,2), time5.) ; end ;
if FirstDepTime="2400" then do ;
	FirstDepTimeF=input("23:59", time5.) ; end ;
		else do ;
			format FirstDepTimeF time5. ;
			FirstDepTimeF=input(substr(FirstDepTime,1,2)||":"||substr(FirstDepTime,3,2), time5.) ; end ;
if WheelsOff="2400" then do ;
	WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOffF time5. ;
			WheelsOffF=input(substr(WheelsOff,1,2)||":"||substr(WheelsOff,3,2), time5.) ; end ;
if WheelsOn="2400" then do ;
	WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format WheelsOnF time5. ;
			WheelsOnF=input(substr(WheelsOn,1,2)||":"||substr(WheelsOn,3,2), time5.) ; end ;
if Div1WheelsOn="2400" then do ;
	Div1WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOnF time5. ;
			Div1WheelsOnF=input(substr(Div1WheelsOn,1,2)||":"||substr(Div1WheelsOn,3,2), time5.) ; end ;
if Div1WheelsOff="2400" then do ;
	Div1WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div1WheelsOffF time5. ;
			Div1WheelsOffF=input(substr(Div1WheelsOff,1,2)||":"||substr(Div1WheelsOff,3,2), time5.) ; end ;
if Div2WheelsOn="2400" then do ;
	Div2WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOnF time5. ;
			Div2WheelsOnF=input(substr(Div2WheelsOn,1,2)||":"||substr(Div2WheelsOn,3,2), time5.) ; end ;
if Div2WheelsOff="2400" then do ;
	Div2WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div2WheelsOffF time5. ;
			Div2WheelsOffF=input(substr(Div2WheelsOff,1,2)||":"||substr(Div2WheelsOff,3,2), time5.) ; end ;
if Div3WheelsOn="2400" then do ;
	Div3WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOnF time5. ;
			Div3WheelsOnF=input(substr(Div3WheelsOn,1,2)||":"||substr(Div3WheelsOn,3,2), time5.) ; end ;
if Div3WheelsOff="2400" then do ;
	Div3WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div3WheelsOffF time5. ;
			Div3WheelsOffF=input(substr(Div3WheelsOff,1,2)||":"||substr(Div3WheelsOff,3,2), time5.) ; end ;
if Div4WheelsOn="2400" then do ;
	Div4WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOnF time5. ;
			Div4WheelsOnF=input(substr(Div4WheelsOn,1,2)||":"||substr(Div4WheelsOn,3,2), time5.) ; end ;
if Div4WheelsOff="2400" then do ;
	Div4WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div4WheelsOffF time5. ;
			Div4WheelsOffF=input(substr(Div4WheelsOff,1,2)||":"||substr(Div4WheelsOff,3,2), time5.) ; end ;
if Div5WheelsOn="2400" then do ;
	Div5WheelsOnF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOnF time5. ;
			Div5WheelsOnF=input(substr(Div5WheelsOn,1,2)||":"||substr(Div5WheelsOn,3,2), time5.) ; end ;
if Div5WheelsOff="2400" then do ;
	Div5WheelsOffF=input("23:59", time5.) ; end ;
		else do ;
			format Div5WheelsOffF time5. ;
			Div5WheelsOffF=input(substr(Div5WheelsOff,1,2)||":"||substr(Div5WheelsOff,3,2), time5.) ; end ;
%mend ;


/***************************************************************************************/
/***************************************************************************************/
/**************** Reference Multiple Files in a SAS Dataset Manifest *******************/
/***************************************************************************************/
/***************************************************************************************/

data BTS201505 &droprenamemv. ;
infile "File1.csv"
dsd delimiter=',' firstobs=2 obs=max ;

	&lengthmv. ;

do while(not done);
	&inputmv. ;
	%timevars ;
		output ;
end;
run ;

/* end of code for setting up dataset*/




proc sort data=BTS201505;
by Carrier TailNum FlightDate CRSDepTime FlightNum ;
run ;


data Dataset1;
retain  DepDelayInd 0;  
format flightdate yymmdd10. DepDel15 4. DepDelay 4.;
set BTS201505;
by Carrier TailNum FlightDate ;


/* not very delayed flight so no sequence*/
if first.FlightDate=1 and DepDel15 =0 then do;
	DepDelayInd=0;
end;

	else do ;

	/* first flight in a delayed sequence*/
	if first.FlightDate=1 and DepDel15 = 1 then do;
		DepDelayInd=1;
	end;

		else do ;
	/* even if it isn't first flight in the BY group will be 1st flight in sequence */
			if DepDel15 =1 then do;
				DepDelayInd+1;
			end;

			else do; 
			DepDelayInd = 0;  
end;
end;
end;
output ;

run ;



/* keep only the rows belonging to a sequence of delayed flights, so remove all rows that have 0 in the DepDelayInd*/
data Dataset2;
format flightdate yymmdd10. ;
set Dataset1(keep= Carrier TailNum FlightDate DepDelayInd DepDelay Origin Distance CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay );
by Carrier TailNum FlightDate ;
if DepDelayInd ^=0 then do ;
output ;
end;
run;


/* to later easily do a BY sequence, I create a sequence ID*/
data Dataset4;
retain SequenceID 0;
format flightdate yymmdd10. ;
set Dataset2;
by Carrier TailNum FlightDate ;

/* The sequence ID stays the same if the row is not the 1st in the sequence*/
if DepDelayInd =1 then do ;

SequenceID+1;
end;
output ;

run;


/* Creating a dataset with a column showing the largest reason for the delay as a charachter*/
data Dataset5 ; 
retain EndSeq 1 FirstDelayCause FirstOrigin SequenceDistance;
format flightdate yymmdd10. ;
set Dataset4;
by Carrier TailNum FlightDate SequenceID ;
if first.SequenceID then do ;

	if CarrierDelay >= WeatherDelay and 
		CarrierDelay>= NASDelay and CarrierDelay>= SecurityDelay and CarrierDelay>= LateAircraftDelay then do;
	FirstDelayCause='CarrierDelay';
	end;
	if WeatherDelay >= CarrierDelay and 
		WeatherDelay>= NASDelay and WeatherDelay>= SecurityDelay and WeatherDelay>= LateAircraftDelay then do;
	    FirstDelayCause='WeatherDelay';
	end;
	if NASDelay >= CarrierDelay and 
			NASDelay>= WeatherDelay and NASDelay>= SecurityDelay and NASDelay>= LateAircraftDelay then do;
	FirstDelayCause='NASDelay';
	end;
	if SecurityDelay >= CarrierDelay and 
			SecurityDelay>= WeatherDelay and SecurityDelayy>= NASDelay and SecurityDelay>= LateAircraftDelay then do;
	FirstDelayCause='SecurityDelay';
	end;
	if LateAircraftDelay >= CarrierDelay and 
			LateAircraftDelay>= WeatherDelay and LateAircraftDelay>= NASDelay and LateAircraftDelay>= SecurityDelay then do;
	FirstDelayCause='LateAircraftDelay';
	end;


FirstOrigin = Origin;
SequenceDistance = Distance ;
end;

else do;
SequenceDistance+Distance;
end;

if last.SequenceID then do;
EndSeq=DepDelayind;
end;
run;


/* Finally creating the summary dataset with 1 row for each sequence of delayed flights*/
data Summary ; 
format flightdate yymmdd10. ;
set Dataset5;
by Carrier TailNum FlightDate SequenceID ;
if  last.SequenceID then do;
output ;
end;
run;



/* Poisson regression*/

 proc genmod data=Summary;
      class FirstDelayCause FirstOrigin;
      model EndSeq = SequenceDistance FirstDelayCause FirstOrigin / dist   = poisson
                          link   = log
                          offset = EndSeq;
   run;




/* Getting summary statistics and plots for EndSeq*/

proc univariate data=Summary ;
var EndSeq ;
histogram EndSeq / normal lognormal (theta=-25) kernel (k = triangular /* c = SJPI /* Default is MISE*/ /*w = 1*/ color = green ) ;

run ;


proc freq data=Summary ;
tables EndSeq / plot=freqplot ;
run ;


proc means data=Summary min max mean std skew kurt ;
var EndSeq ;
run ;



/* explanation of the results. In particular,  what the model tells us about how long a TailNum takes to return to on-time status after experiencing an initial delay.*/

ods text='
The number of flights in a delayed sequence goes from 1 (obviously) up to 10. The mean is 1.7560365. Also looking at the distribution of these values, we can clearly tell that in most cases the number of flights that it takes to recover from a severe delay (>15 mins) is very low and is almost always no more than 2 or 3 (81% and 92% of the cases respectively).
 It would be interesting to repeat the analysis without resetting the sequence to 1 when a new day starts. If each flight takes several hours, the fact that it takes 2 flights to get back on schedule might in fact not be the case but it might just be that the hours have passed and we have entered a new day.
';


ods text='
Looking at the Poisson regression results, we see that these variables have a significant impact in explaining EndSeq, so the number of flights it takes to get back on schedule:' ;

ods text=' 1. SequenceDistance: Is significant and negative, so if the flights in the sequence are long, then it will take fewer flights to get back on schedule. This can have several explanations including these 2:  ' ;

ods text=' 1.1 the longer the distance, the more hours of flight, the higher the likelihood of the day to end and thus for us to ocnsider the sequence to be interrupted by this end of the day' ;

ods text=' 1.2 the longer the distance, the more hours of flight, the higher the chances for a flight to speed up compared to the standard speed, and so the higher the likelihood of catching up to the schedule' ;
ods text=' 2. If the biggest reason of the delay was SecurityDelay, the sequence is on average shorter than if the biggest reason of delay was any of the others mapped in the dataset. This could be because a security reason does not have an effect on the following flights as well. On the contrary, if we had delay for a reason like weather, then maybe the overall weather is bad, and it will also impact the following flights, resulting in a longer sequence of delayed flights.';

   ods pdf close ;

