<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\strategie;
use App\Models\timeframe;
use App\Models\financial_instrument;
use App\Models\indicator_icon;
use Illuminate\Support\Facades\Validator;
use App\Models\icon_strategie_mapping;
use App\Models\icon_timeframe_mapping;
use App\Models\icon_financial_instruments;
use Illuminate\Support\Facades\Redis;

class IndiCatorController extends Controller
{
    public function strategies(Request $request)
    {
        $rules = array(
            'strategies_name' => 'required',
        );
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $validator->errors();
        } else {
            $strategie =  new strategie();
            $strategie->strategies_name = $request->strategies_name;
            $result = $strategie->save();
            if ($result) {
                return response(['Message' => 'Add  Strategies successfully']);
            } else {
                return response(['Not Strategies Create']);
            }
        }
    }
    public function timeframeSelectors(Request $request)
    {
        $rules = array(
            'timeframes_name' => 'required',
        );
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $validator->errors();
        } else {
            $timeframe = new timeframe();
            $timeframe->timeframes_name = $request->timeframes_name;
            $result = $timeframe->save();

            if ($result) {
                return ['Add the  timeframeSelectors successfully'];
            } else {
                return ['Not timeframeSelectors Create'];
            }
        }
    }
    public function FinancialInstrument(Request $request)
    {
        $rules = array(
            'financial_instruments_name' => 'required',
        );
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $validator->errors();
        } else {
            $financial_instrument = new financial_instrument();
            $financial_instrument->financial_instruments_name = $request->financial_instruments_name;
            $result = $financial_instrument->save();

            if ($result) {
                return ['Add  financialinstrument successfully'];
            } else {
                return ['Not financialinstrument Create'];
            }
        }
    }
    public function IndicatorIcons(Request $request)
    {
        $rules = array(
            'icon_name' => 'required',
            'icon_url' => 'required|url',
        );
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return $validator->errors();
        } else {
            // $indicator_icon = array();
            $indicator_icon = new indicator_icon();
            // $indicator_icon[] = [];
            $indicator_icon->icon_name  = $request->icon_name;
            $indicator_icon->icon_url  = $request->icon_url;
            $result = $indicator_icon->save();
            if ($result) {
                return ['Add  Icon successfully'];
            } else {
                return ['Not Icon Create'];
            }
        }
    }

    public function IndicatorIist()
    {
        $IndicatorIist = [];
        $IndicatorIist['strategie'] = strategie::select("strategies_id", "strategies_name")->get();
        $IndicatorIist['timeframe'] = timeframe::select("timeframes_id", "timeframes_name")->get();
        $IndicatorIist['financial_instrument'] = financial_instrument::select("financial_instruments_id", "financial_instruments_name")->get();
        $IndicatorIist['indicator_icon'] = indicator_icon::select("indicator_icons_id", "icon_name", "icon_url")->get();
        return $IndicatorIist;
    }
    /*mapping the table*/
    public function strategies_mapping(Request $request)
    {
        $strategies = explode(",", $request->strategies_mapping_id);
        for ($i = 0; $i < count($strategies); $i++) {
            $icon_strategie_mapping = new  icon_strategie_mapping();
            $icon_strategie_mapping->indicator_icons_id = $request->indicator_icons_id;
            $icon_strategie_mapping->strategies_mapping_id = $strategies[$i];
            $result = $icon_strategie_mapping->save();
        }
        if ($result) {
            return response([
                'status' => "1",
                'Message' => "Setting saved successfully"
            ]);
        } else {
            return response([
                'status' => "0",
                'Message' => "Setting saved Not successfully"
            ]);
        }
    }
    public function timeframe_mapping(Request $request)
    {
        $timeframes = explode(",", $request->timeframes_id);
        for ($i = 0; $i < count($timeframes); $i++) {
            $icon_timeframe_mapping = new  icon_timeframe_mapping();
            $icon_timeframe_mapping->indicator_icons_id = $request->indicator_icons_id;
            $icon_timeframe_mapping->timeframes_id = $timeframes[$i];
            $result = $icon_timeframe_mapping->save();
        }
        if ($result) {
            return response([
                'status' => "1",
                'Message' => "Setting saved successfully"
            ]);
        } else {
            return response([
                'status' => "0",
                'Message' => "Setting saved Not successfully"
            ]);
        }
    }
    public function financial_instrument_mapping(Request $request)
    {
        $financials = explode(",", $request->financials_instruments_id);
        for ($i = 0; $i < count($financials); $i++) {
            $icon_financial_instruments = new  icon_financial_instruments();
            $icon_financial_instruments->indicator_icons_id = $request->indicator_icons_id;
            $icon_financial_instruments->financials_instruments_id = $financials[$i];
            $result = $icon_financial_instruments->save();
        }
        if ($result) {
            return response([
                'status' => "1",
                'Message' => "Setting saved successfully"
            ]);
        } else {
            return response([
                'status' => "0",
                'Message' => "Setting saved Not successfully"
            ]);
        }
    }
    public function mapping_list()
    {
        $mapping = [];
        // $mapping['timeframes'] = indicator_icon::join('icon_timeframes_mapping', 'icon_timeframes_mapping.indicator_icons_id', '=', 'indicator_icons.indicator_icons_id')
        //     ->join('timeframes', 'timeframes.icon_time_mapping_id', '=', 'icon_timeframes_mapping.timeframes_id')->where('icon_time_mapping_id', 1)
        //     ->get(['indicator_icons.indicator_icons_id', 'indicator_icons.icon_name', 'timeframes.timeframes_name', 'timeframes.icon_time_mapping_id']);
        // $mapping['strategies'] = indicator_icon::join('icon_strategies_mapping', 'icon_strategies_mapping.indicator_icons_id', '=', 'indicator_icons.indicator_icons_id')
        //     ->join('strategies', 'strategies.strategies_mapping_id', '=', 'icon_strategies_mapping.strategies_mapping_id')
        //     ->get(['indicator_icons.indicator_icons_id', 'indicator_icons.icon_name', 'strategies.strategies_name', 'strategies.strategies_mapping_id']);
        // $mapping['financial_instruments'] = indicator_icon::join('icon_financials_instruments', 'icon_financials_instruments.indicator_icons_id', '=', 'indicator_icons.indicator_icons_id')
        //     ->join('financial_instruments', 'financial_instruments.financial_instruments_mapping_id', '=', 'icon_financials_instruments.financials_instruments_id')->where('financial_instruments_mapping_id', 2)
        //     ->get(['indicator_icons.indicator_icons_id', 'indicator_icons.icon_name', 'financial_instruments.financial_instruments_name', 'financial_instruments.financial_instruments_mapping_id']);
        $mapping= indicator_icon::select('indicator_icons_id','icon_name')->get();
        $mapping->each(function($mapping, $key) {
            $mapping->timeframes = icon_timeframe_mapping::where('indicator_icons_id',$mapping->indicator_icons_id,)->get();
            $mapping->timeframes=  timeframe::select("icon_time_mapping_id", "timeframes_name",)->get();  
            $mapping->strategies = icon_strategie_mapping::where('indicator_icons_id',$mapping->indicator_icons_id,)->get();
            $mapping->strategies=  strategie::select("strategies_mapping_id", "strategies_name",)->get();  
            $mapping->financial_instruments =  icon_financial_instruments::where('indicator_icons_id',$mapping->indicator_icons_id,)->get();
            $mapping->financial_instruments=  financial_instrument::select( "financial_instruments_mapping_id","financial_instruments_name",)->get();       
       });
    
        return $mapping;
    }
}
