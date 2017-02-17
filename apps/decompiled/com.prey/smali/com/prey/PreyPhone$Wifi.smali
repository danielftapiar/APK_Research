.class public Lcom/prey/PreyPhone$Wifi;
.super Ljava/lang/Object;
.source "PreyPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/PreyPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wifi"
.end annotation


# instance fields
.field private channel:Ljava/lang/String;

.field private gatewayIp:Ljava/lang/String;

.field private interfaceType:Ljava/lang/String;

.field private ipAddress:Ljava/lang/String;

.field private macAddress:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private netmask:Ljava/lang/String;

.field private security:Ljava/lang/String;

.field private signalStrength:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/prey/PreyPhone;

.field private vendor:Ljava/lang/String;

.field private wifiEnabled:Z


# direct methods
.method public constructor <init>(Lcom/prey/PreyPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/PreyPhone;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->this$0:Lcom/prey/PreyPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->gatewayIp:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->interfaceType:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->netmask:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->security:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalStrength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->signalStrength:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/prey/PreyPhone$Wifi;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/prey/PreyPhone$Wifi;->wifiEnabled:Z

    return v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->channel:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setGatewayIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "gatewayIp"    # Ljava/lang/String;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->gatewayIp:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setInterfaceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "interfaceType"    # Ljava/lang/String;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->interfaceType:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->ipAddress:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->macAddress:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->model:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->name:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setNetmask(Ljava/lang/String;)V
    .locals 0
    .param p1, "netmask"    # Ljava/lang/String;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->netmask:Ljava/lang/String;

    .line 547
    return-void
.end method

.method public setSecurity(Ljava/lang/String;)V
    .locals 0
    .param p1, "security"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->security:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public setSignalStrength(Ljava/lang/String;)V
    .locals 0
    .param p1, "signalStrength"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->signalStrength:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->ssid:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/prey/PreyPhone$Wifi;->vendor:Ljava/lang/String;

    .line 523
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 0
    .param p1, "wifiEnabled"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/prey/PreyPhone$Wifi;->wifiEnabled:Z

    .line 459
    return-void
.end method
