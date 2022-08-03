<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\strategie;
use App\Models\timeframe;
use App\Models\financial_instrument;
use App\Models\indicator_icon;
use Illuminate\Support\Facades\Validator;
use App\Models\icon_strategies_mapping;
use App\Models\icon_timeframe_mapping;
use App\Models\financial_instrument_mapping;
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
                return response(['Message'=>'Add  Strategies successfully']) ;
            } else {
                return response(['Not Strategies Create']) ;
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
    public function  strategies_mapping()
    {
        $users = indicator_icon::join(
            'icon_strategies_mapping',
            'icon_strategies_mapping.indicator_icons_id',
            '=',
            'indicator_icons.indicator_icons_id'
        )
            ->get([
              'indicator_icons.indicator_icons_id', 'indicator_icons.icon_name', 'icon_strategies_mapping.name',
                'icon_strategies_mapping.strategies_mapping_id'
            ]);

        return $users;
    }
    public function  timeframe_mapping()
    {
        $users = indicator_icon::join(
            'icon_timeframe_mapping',
            'icon_timeframe_mapping.indicator_icons_id',
            '=',
            'indicator_icons.indicator_icons_id'
        )->get([
              'indicator_icons.indicator_icons_id', 
              'icon_timeframe_mapping.id','indicator_icons.icon_name', 
              'icon_timeframe_mapping.name','icon_timeframe_mapping.timeframes_mapping_id']);

        return $users;
    }
    public function  financial_instrument_mapping()
    {
    
        $users = indicator_icon::join(
            'icon_mapping_financial_instrument',
            'icon_mapping_financial_instrument.indicator_icons_id',
            '=',
            'indicator_icons.indicator_icons_id'
        )->get([
              'indicator_icons.indicator_icons_id', 
              'icon_mapping_financial_instrument.id','indicator_icons.icon_name', 
              'icon_mapping_financial_instrument.name']);

        return $users;
    }
    public  function mapping_list()
    {
        $mapping = [];
        $mapping['icon_strategies_mapping'] = icon_strategies_mapping::select("strategies_mapping_id",'indicator_icons_id')->get();
        $mapping['financial_instrument_mapping'] = financial_instrument_mapping::select("financial_instrument_mapping_id",'indicator_icons_id')->get();
        $mapping['icon_timeframe_mapping'] = icon_timeframe_mapping::select("timeframes_mapping_id",'indicator_icons_id')->get();
        return $mapping;

    }
}
