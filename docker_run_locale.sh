#!/bin/bash
#
# Copyright © 2017 Sven Ruppert (sven.ruppert@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


docker run \
       -p 8080:8080 \
       --rm \
       --name run \
       -v "$(pwd)":/usr/src/mymaven \
       -w /usr/src/mymaven \
       svenruppert/maven-3.5-jdk-openjdk-10 \
       mvn meecrowave:bake

#docker run -it -p 8080:8080 -p 5005:5005 --rm --name run -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven svenruppert/maven-3.5-jdk-oracle-08 mvn meecrowave:bake -DargLine="-Xmx256m -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"