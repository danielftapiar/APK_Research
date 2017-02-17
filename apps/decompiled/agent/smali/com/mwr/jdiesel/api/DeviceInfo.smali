.class public Lcom/mwr/jdiesel/api/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private android_id:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private software:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "android_id"    # Ljava/lang/String;
    .param p2, "manufacturer"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "software"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->android_id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->model:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->software:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mwr/jdiesel/api/DeviceInfo;->software:Ljava/lang/String;

    return-object v0
.end method
