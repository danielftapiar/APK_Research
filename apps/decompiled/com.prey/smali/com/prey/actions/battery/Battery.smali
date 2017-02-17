.class public Lcom/prey/actions/battery/Battery;
.super Ljava/lang/Object;
.source "Battery.java"


# instance fields
.field private charging:Z

.field private health:I

.field private iconSmall:I

.field private level:I

.field private plugged:I

.field private present:Z

.field private scale:I

.field private status:I

.field private technology:Ljava/lang/String;

.field private temperature:I

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHealth()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/prey/actions/battery/Battery;->health:I

    return v0
.end method

.method public getIconSmall()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/prey/actions/battery/Battery;->iconSmall:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/prey/actions/battery/Battery;->level:I

    return v0
.end method

.method public getPlugged()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/prey/actions/battery/Battery;->plugged:I

    return v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/prey/actions/battery/Battery;->scale:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/prey/actions/battery/Battery;->status:I

    return v0
.end method

.method public getTechnology()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/prey/actions/battery/Battery;->technology:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/prey/actions/battery/Battery;->temperature:I

    return v0
.end method

.method public getVoltage()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/prey/actions/battery/Battery;->voltage:I

    return v0
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/prey/actions/battery/Battery;->charging:Z

    return v0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/prey/actions/battery/Battery;->present:Z

    return v0
.end method

.method public setCharging(Z)V
    .locals 0
    .param p1, "charging"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/prey/actions/battery/Battery;->charging:Z

    .line 29
    return-void
.end method

.method public setHealth(I)V
    .locals 0
    .param p1, "health"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/prey/actions/battery/Battery;->health:I

    .line 37
    return-void
.end method

.method public setIconSmall(I)V
    .locals 0
    .param p1, "iconSmall"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/prey/actions/battery/Battery;->iconSmall:I

    .line 45
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/prey/actions/battery/Battery;->level:I

    .line 53
    return-void
.end method

.method public setPlugged(I)V
    .locals 0
    .param p1, "plugged"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/prey/actions/battery/Battery;->plugged:I

    .line 61
    return-void
.end method

.method public setPresent(Z)V
    .locals 0
    .param p1, "present"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/prey/actions/battery/Battery;->present:Z

    .line 69
    return-void
.end method

.method public setScale(I)V
    .locals 0
    .param p1, "scale"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/prey/actions/battery/Battery;->scale:I

    .line 77
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/prey/actions/battery/Battery;->status:I

    .line 85
    return-void
.end method

.method public setTechnology(Ljava/lang/String;)V
    .locals 0
    .param p1, "technology"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/prey/actions/battery/Battery;->technology:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setTemperature(I)V
    .locals 0
    .param p1, "temperature"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/prey/actions/battery/Battery;->temperature:I

    .line 101
    return-void
.end method

.method public setVoltage(I)V
    .locals 0
    .param p1, "voltage"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/prey/actions/battery/Battery;->voltage:I

    .line 109
    return-void
.end method
