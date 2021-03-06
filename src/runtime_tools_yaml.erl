%%%-------------------------------------------------------------------
%%% @author Evgeny Khramtsov <xramtsov@gmail.com>
%%%
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%
%%%-------------------------------------------------------------------
-module(runtime_tools_yaml).

-behaviour(conf).

%% API
-export([validator/0]).
%% Imported validators
-import(yval, [beam/1, options/2]).

%%%===================================================================
%%% API
%%%===================================================================
-spec validator() -> yval:validator().
validator() ->
    options(
      #{ttb_autostart_module =>
            beam([{write_config, 1},
                  {delete_config, 0},
                  {read_config, 0}])},
      [unique]).

%%%===================================================================
%%% Internal functions
%%%===================================================================
