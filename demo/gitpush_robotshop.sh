#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# ADAPT VALUES in ./01_config.sh
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# DO NOT EDIT BELOW
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



clear


echo "."

oc scale --replicas=0  deployment ratings -n robot-shop >/dev/null 2>&1
oc delete pod -n robot-shop $(oc get po -n robot-shop|grep ratings|awk '{print$1}') --force --grace-period=0 >/dev/null 2>&1


#oc apply -f ./robotshop/mongo-error.yaml -n robot-shop #>/dev/null 2>&1
#oc delete rs -n robot-shop $(oc get rs -n robot-shop|grep mongodb|awk '{print$1}') --force --grace-period=0 #>/dev/null 2>&1
#oc delete pod -n robot-shop $(oc get po -n robot-shop|grep mongodb|awk '{print$1}') --force --grace-period=0 #>/dev/null 2>&1

echo "."


sleep 5

./robotshop/simulate-incident.sh



oc scale --replicas=1  deployment ratings -n robot-shop >/dev/null 2>&1


oc scale --replicas=0  deployment ratings -n robot-shop >/dev/null 2>&1
oc delete pod -n robot-shop $(oc get po -n robot-shop|grep ratings|awk '{print$1}') --force --grace-period=0 >/dev/null 2>&1
sleep 10
oc scale --replicas=3  deployment ratings -n robot-shop >/dev/null 2>&1
sleep 10
oc scale --replicas=0  deployment ratings -n robot-shop >/dev/null 2>&1
oc delete pod -n robot-shop $(oc get po -n robot-shop|grep ratings|awk '{print$1}') --force --grace-period=0 >/dev/null 2>&1
sleep 10
oc scale --replicas=1  deployment ratings -n robot-shop >/dev/null 2>&1
sleep 10
oc scale --replicas=0  deployment ratings -n robot-shop >/dev/null 2>&1
oc delete pod -n robot-shop $(oc get po -n robot-shop|grep ratings|awk '{print$1}') --force --grace-period=0 >/dev/null 2>&1
sleep 10
oc scale --replicas=3  deployment ratings -n robot-shop >/dev/null 2>&1


sleep 10
oc scale --replicas=1  deployment ratings -n robot-shop >/dev/null 2>&1
