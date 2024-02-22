%% Copyright 2018 Erlio GmbH Basel Switzerland (http://erl.io)
%% Copyright 2018-2024 Octavo Labs/VerneMQ (https://vernemq.com/) 
%% and Individual Contributors.
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.

-module(vmq_plugin).
-export([
    only/2,
    all/2,
    all_till_ok/2,
    all_till_ok/3,
    info/1
]).

only(_Hook, _Args) ->
    {error, no_matching_hook_found}.

all(_Hook, _Args) ->
    {error, no_matching_hook_found}.

all_till_ok(_Hook, _Args) ->
    all_till_ok(_Hook, _Args, {error, no_matching_hook_found}).

all_till_ok(_Hook, _Args, NonMatchingResponse) ->
    NonMatchingResponse.

info(_) -> [].
