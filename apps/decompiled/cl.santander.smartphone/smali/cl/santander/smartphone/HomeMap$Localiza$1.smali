.class Lcl/santander/smartphone/HomeMap$Localiza$1;
.super Ljava/util/TimerTask;
.source "HomeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/HomeMap$Localiza;->scheduleGeo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcl/santander/smartphone/HomeMap$Localiza;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/HomeMap$Localiza;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/HomeMap$Localiza$1;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    .line 234
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza$1;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    # getter for: Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap$Localiza;->access$2(Lcl/santander/smartphone/HomeMap$Localiza;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza$1;->this$1:Lcl/santander/smartphone/HomeMap$Localiza;

    # getter for: Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap$Localiza;->access$2(Lcl/santander/smartphone/HomeMap$Localiza;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->stop_GPS()V

    .line 243
    :cond_0
    return-void
.end method
