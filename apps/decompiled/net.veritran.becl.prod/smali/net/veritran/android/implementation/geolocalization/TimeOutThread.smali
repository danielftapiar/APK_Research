.class public Lnet/veritran/android/implementation/geolocalization/TimeOutThread;
.super Ljava/lang/Thread;
.source "TimeOutThread.java"


# static fields
.field public static final SLEEP_TIME:I = 0x3e8

.field public static final STATE_DONE:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TimeOutThread"

.field public static final TOTAL_PERCENT:I = 0x64


# instance fields
.field private accuracy:I

.field private geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

.field private isMultipleRequest:Z

.field private locListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

.field private locManager:Landroid/location/LocationManager;

.field private mHandler:Landroid/os/Handler;

.field private mState:I

.field private repetitions:I

.field private timeOut:I

.field private totalTime:I


# direct methods
.method public constructor <init>(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;Landroid/location/LocationManager;Lnet/veritran/android/implementation/geolocalization/VTLocationListener;Z)V
    .locals 0
    .param p1, "geoListener"    # Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;
    .param p2, "locationManager"    # Landroid/location/LocationManager;
    .param p3, "listener"    # Lnet/veritran/android/implementation/geolocalization/VTLocationListener;
    .param p4, "isMultipleRequest"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    .line 34
    iput-object p2, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->locManager:Landroid/location/LocationManager;

    .line 36
    iput-object p3, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->locListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    .line 38
    iput-boolean p4, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->isMultipleRequest:Z

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 55
    const-string v3, "TimeOutThread"

    const-string v10, "Run()..."

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mState:I

    .line 59
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->totalTime:I

    .line 63
    const/16 v17, 0x0

    .line 65
    .local v17, "percent":I
    const/16 v18, 0x0

    .line 67
    .local v18, "request":I
    const-wide/16 v4, 0x0

    .line 69
    .local v4, "latitude":D
    const-wide/16 v6, 0x0

    .line 71
    .local v6, "longitude":D
    const-wide/16 v8, 0x0

    .line 73
    .local v8, "altitude":D
    const-string v19, ""

    .line 75
    .local v19, "trackerType":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mState:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->repetitions:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    .line 77
    const/16 v16, 0x1

    .line 79
    .local v16, "mustSleep":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->locListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-virtual {v3}, Lnet/veritran/android/implementation/geolocalization/VTLocationListener;->getLocation()Landroid/location/Location;

    move-result-object v14

    .line 81
    .local v14, "loc":Landroid/location/Location;
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    move-object/from16 v0, p0

    iget v10, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->accuracy:I

    int-to-float v10, v10

    cmpg-float v3, v3, v10

    if-gtz v3, :cond_5

    .line 82
    add-int/lit8 v18, v18, 0x1

    .line 83
    const-string v3, "TimeOutThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 85
    const-string v3, "TimeOutThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Latitude: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 88
    const-string v3, "TimeOutThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Longitude: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v14}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 92
    invoke-virtual {v14}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v19

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    if-eqz v3, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    .line 96
    invoke-virtual {v14}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {v14}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    float-to-int v12, v12

    .line 95
    invoke-interface/range {v3 .. v12}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyUpdateValidResult(DDDJI)V

    .line 98
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->isMultipleRequest:Z

    if-eqz v3, :cond_3

    .line 99
    const-string v3, "TimeOutThread"

    const-string v10, "Is Multiple Request"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move/from16 v0, v18

    int-to-float v3, v0

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v3, v10

    move-object/from16 v0, p0

    iget v10, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->repetitions:I

    int-to-float v10, v10

    div-float/2addr v3, v10

    float-to-int v0, v3

    move/from16 v17, v0

    .line 102
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->totalTime:I

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyViewUpdate(I)V

    .line 105
    const-string v3, "TimeOutThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Percent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v3, 0x64

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    invoke-interface {v3}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyReleaseJob()V

    .line 109
    const/16 v16, 0x0

    .line 119
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 120
    const-string v3, "TimeOutThread"

    const-string v10, "Handler distinto de null..."

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 124
    .local v15, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "elapsedTime"

    move-object/from16 v0, p0

    iget v10, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->totalTime:I

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string v10, "acquired"

    if-eqz v14, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string v3, "latitude"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 128
    const-string v3, "longitude"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 129
    const-string v3, "trackerType"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "altitude"

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 131
    const-string v3, "percent"

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {v15, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v15    # "msg":Landroid/os/Message;
    :cond_2
    :goto_3
    if-eqz v16, :cond_0

    .line 167
    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->totalTime:I

    add-int/lit16 v3, v3, 0x3e8

    move-object/from16 v0, p0

    iput v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->totalTime:I

    goto/16 :goto_0

    .line 113
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    invoke-interface {v3}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyReleaseJob()V

    .line 114
    const/16 v16, 0x0

    goto :goto_1

    .line 126
    .restart local v2    # "b":Landroid/os/Bundle;
    .restart local v15    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 138
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v15    # "msg":Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->totalTime:I

    move-object/from16 v0, p0

    iget v10, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->timeOut:I

    if-lt v3, v10, :cond_2

    .line 139
    const/16 v16, 0x0

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    if-eqz v3, :cond_6

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    const-string v10, "999"

    invoke-interface {v3, v10}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyJobCancelled(Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->isMultipleRequest:Z

    if-nez v3, :cond_6

    .line 143
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setState(I)V

    .line 147
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v15

    .line 150
    .restart local v15    # "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 151
    .restart local v2    # "b":Landroid/os/Bundle;
    const-string v3, "elapsedTime"

    move-object/from16 v0, p0

    iget v10, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->totalTime:I

    invoke-virtual {v2, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    const-string v10, "acquired"

    if-eqz v14, :cond_7

    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    const-string v3, "latitude"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 154
    const-string v3, "longitude"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 155
    const-string v3, "altitude"

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 156
    const-string v3, "percent"

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {v15, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 152
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 169
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v15    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v13

    .line 170
    .local v13, "e":Ljava/lang/InterruptedException;
    const-string v3, "ERROR"

    const-string v10, "Thread Interrupted"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 176
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v14    # "loc":Landroid/location/Location;
    .end local v16    # "mustSleep":Z
    :cond_8
    const-string v3, "TimeOutThread"

    const-string v10, "Removiendo el listnener..."

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->locManager:Landroid/location/LocationManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->locListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-virtual {v3, v10}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 179
    return-void
.end method

.method public setAccuracy(I)V
    .locals 0
    .param p1, "accuracy"    # I

    .prologue
    .line 47
    iput p1, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->accuracy:I

    .line 48
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 43
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public setRepetitions(I)V
    .locals 0
    .param p1, "repetitions"    # I

    .prologue
    .line 51
    iput p1, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->repetitions:I

    .line 52
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 182
    iput p1, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->mState:I

    .line 183
    return-void
.end method

.method public setTimeOut(I)V
    .locals 1
    .param p1, "timeOut"    # I

    .prologue
    .line 186
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->timeOut:I

    .line 187
    return-void
.end method
