.class public Lcom/prey/PreyPhone$Hardware;
.super Ljava/lang/Object;
.source "PreyPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/PreyPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Hardware"
.end annotation


# instance fields
.field private androidDeviceId:Ljava/lang/String;

.field private biosVendor:Ljava/lang/String;

.field private biosVersion:Ljava/lang/String;

.field private busyMemory:J

.field private cpuCores:Ljava/lang/String;

.field private cpuModel:Ljava/lang/String;

.field private cpuSpeed:Ljava/lang/String;

.field private freeMemory:J

.field private mbModel:Ljava/lang/String;

.field private mbSerial:Ljava/lang/String;

.field private mbVendor:Ljava/lang/String;

.field private mbVersion:Ljava/lang/String;

.field private ramModules:Ljava/lang/String;

.field private ramSize:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/prey/PreyPhone;

.field private totalMemory:J

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/prey/PreyPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/PreyPhone;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->this$0:Lcom/prey/PreyPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->androidDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getBiosVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->biosVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getBiosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->biosVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBusyMemory()J
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/prey/PreyPhone$Hardware;->busyMemory:J

    return-wide v0
.end method

.method public getCpuCores()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->cpuCores:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->cpuModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuSpeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->cpuSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeMemory()J
    .locals 2

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/prey/PreyPhone$Hardware;->freeMemory:J

    return-wide v0
.end method

.method public getMbModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->mbModel:Ljava/lang/String;

    return-object v0
.end method

.method public getMbSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->mbSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getMbVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->mbVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getMbVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->mbVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRamModules()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->ramModules:Ljava/lang/String;

    return-object v0
.end method

.method public getRamSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->ramSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/prey/PreyPhone$Hardware;->totalMemory:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/prey/PreyPhone$Hardware;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "androidDeviceId"    # Ljava/lang/String;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->androidDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setBiosVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "biosVendor"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->biosVendor:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setBiosVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "biosVersion"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->biosVersion:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setBusyMemory(J)V
    .locals 1
    .param p1, "busyMemory"    # J

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/prey/PreyPhone$Hardware;->busyMemory:J

    .line 324
    return-void
.end method

.method public setCpuCores(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuCores"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->cpuCores:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setCpuModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuModel"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->cpuModel:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setCpuSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuSpeed"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->cpuSpeed:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setFreeMemory(J)V
    .locals 1
    .param p1, "freeMemory"    # J

    .prologue
    .line 315
    iput-wide p1, p0, Lcom/prey/PreyPhone$Hardware;->freeMemory:J

    .line 316
    return-void
.end method

.method public setMbModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mbModel"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->mbModel:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setMbSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "mbSerial"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->mbSerial:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setMbVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "mbVendor"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->mbVendor:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setMbVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mbVersion"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->mbVersion:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setRamModules(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramModules"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->ramModules:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setRamSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramSize"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->ramSize:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->serialNumber:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setTotalMemory(J)V
    .locals 1
    .param p1, "totalMemory"    # J

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/prey/PreyPhone$Hardware;->totalMemory:J

    .line 308
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/prey/PreyPhone$Hardware;->uuid:Ljava/lang/String;

    .line 356
    return-void
.end method
