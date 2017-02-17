.class public Lcom/prey/events/manager/LocationLowBatteryRunner;
.super Ljava/lang/Object;
.source "LocationLowBatteryRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static sdf:Ljava/text/SimpleDateFormat;


# instance fields
.field private ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yy hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/prey/events/manager/LocationLowBatteryRunner;->sdf:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/events/manager/LocationLowBatteryRunner;->ctx:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/prey/events/manager/LocationLowBatteryRunner;->ctx:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static isValid(Landroid/content/Context;)Z
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 52
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 53
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 54
    const/16 v9, 0xa

    const/4 v10, -0x3

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 55
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 56
    .local v2, "leastSixHours":J
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prey/PreyConfig;->getLocationLowBatteryDate()J

    move-result-wide v4

    .line 57
    .local v4, "locationLowBatteryDate":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "locationLowBatteryDate :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/prey/events/manager/LocationLowBatteryRunner;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 58
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "leastSixHours   :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/prey/events/manager/LocationLowBatteryRunner;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "diff:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 60
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-eqz v9, :cond_0

    cmp-long v9, v2, v4

    if-lez v9, :cond_1

    .line 61
    :cond_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 62
    .local v6, "now":J
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lcom/prey/PreyConfig;->setLocationLowBatteryDate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v8, 0x1

    .line 67
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "leastSixHours":J
    .end local v4    # "locationLowBatteryDate":J
    .end local v6    # "now":J
    :cond_1
    :goto_0
    return v8

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 35
    const-string v2, "LocationLowBatteryRunner"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 36
    const-string v2, "LocationLowBatteryRunner"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 37
    const-string v2, "LocationLowBatteryRunner"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 39
    :try_start_0
    const-string v1, "[ {\"command\": \"get\",\"target\": \"location_low_battery\",\"options\": {}}]"

    .line 40
    .local v1, "jsonString":Ljava/lang/String;
    new-instance v2, Lcom/prey/json/parser/JSONParser;

    invoke-direct {v2}, Lcom/prey/json/parser/JSONParser;-><init>()V

    iget-object v3, p0, Lcom/prey/events/manager/LocationLowBatteryRunner;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/prey/json/parser/JSONParser;->getJSONFromTxt(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/prey/events/manager/LocationLowBatteryRunner;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/prey/actions/observer/ActionsController;->getInstance(Landroid/content/Context;)Lcom/prey/actions/observer/ActionsController;

    move-result-object v2

    iget-object v3, p0, Lcom/prey/events/manager/LocationLowBatteryRunner;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/prey/actions/observer/ActionsController;->runActionJson(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v1    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    goto :goto_0
.end method
