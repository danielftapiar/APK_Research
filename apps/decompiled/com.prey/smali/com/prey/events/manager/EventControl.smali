.class public Lcom/prey/events/manager/EventControl;
.super Ljava/lang/Object;
.source "EventControl.java"


# static fields
.field private static instance:Lcom/prey/events/manager/EventControl;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private sdf2:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/prey/events/manager/EventControl;->instance:Lcom/prey/events/manager/EventControl;

    .line 23
    sput-object v0, Lcom/prey/events/manager/EventControl;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yy hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/prey/events/manager/EventControl;->sdf2:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/prey/events/manager/EventControl;->map:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/prey/events/manager/EventControl;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/prey/events/manager/EventControl;->instance:Lcom/prey/events/manager/EventControl;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/prey/events/manager/EventControl;

    invoke-direct {v0}, Lcom/prey/events/manager/EventControl;-><init>()V

    sput-object v0, Lcom/prey/events/manager/EventControl;->instance:Lcom/prey/events/manager/EventControl;

    .line 34
    :cond_0
    sget-object v0, Lcom/prey/events/manager/EventControl;->instance:Lcom/prey/events/manager/EventControl;

    return-object v0
.end method


# virtual methods
.method public valida(Lorg/json/JSONObject;)Z
    .locals 19
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    const-string v11, ""

    .line 39
    .local v11, "state":Ljava/lang/String;
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    .line 41
    .local v8, "percentage":D
    :try_start_0
    const-string v16, "battery_status"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    .local v4, "jsonBattery":Lorg/json/JSONObject;
    const-string v16, "state"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 43
    const-string v16, "percentage_remaining"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "remaining":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "state:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " remaining:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 45
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 49
    .end local v4    # "jsonBattery":Lorg/json/JSONObject;
    .end local v10    # "remaining":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 50
    .local v5, "nowDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 51
    .local v6, "now":J
    const-string v16, "discharging"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "stopped_charging"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 52
    :cond_0
    const-wide/16 v16, 0x0

    cmpl-double v16, v8, v16

    if-lez v16, :cond_4

    .line 53
    sget-object v16, Lcom/prey/events/manager/EventControl;->map:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 54
    sget-object v16, Lcom/prey/events/manager/EventControl;->map:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 55
    .local v12, "time":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 56
    .local v2, "cal":Ljava/util/Calendar;
    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 57
    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    cmpg-double v16, v8, v16

    if-gtz v16, :cond_1

    .line 58
    const/16 v16, 0xc

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 62
    :goto_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 63
    .local v14, "timeMore":J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "now        :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prey/events/manager/EventControl;->sdf2:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 64
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "timeMore:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/prey/events/manager/EventControl;->sdf2:Ljava/text/SimpleDateFormat;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 65
    cmp-long v16, v14, v6

    if-lez v16, :cond_2

    .line 66
    const/16 v16, 0x0

    .line 79
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v12    # "time":J
    .end local v14    # "timeMore":J
    :goto_2
    return v16

    .line 46
    .end local v5    # "nowDate":Ljava/util/Date;
    .end local v6    # "now":J
    :catch_0
    move-exception v3

    .line 47
    .local v3, "e":Ljava/lang/Exception;
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 60
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "cal":Ljava/util/Calendar;
    .restart local v5    # "nowDate":Ljava/util/Date;
    .restart local v6    # "now":J
    .restart local v12    # "time":J
    :cond_1
    const/16 v16, 0xc

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    .line 68
    .restart local v14    # "timeMore":J
    :cond_2
    sget-object v16, Lcom/prey/events/manager/EventControl;->map:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/16 v16, 0x1

    goto :goto_2

    .line 72
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v12    # "time":J
    .end local v14    # "timeMore":J
    :cond_3
    sget-object v16, Lcom/prey/events/manager/EventControl;->map:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 v16, 0x1

    goto :goto_2

    .line 76
    :cond_4
    const/16 v16, 0x1

    goto :goto_2

    .line 79
    :cond_5
    const/16 v16, 0x1

    goto :goto_2
.end method
