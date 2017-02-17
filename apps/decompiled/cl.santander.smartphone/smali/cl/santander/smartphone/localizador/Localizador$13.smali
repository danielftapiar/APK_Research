.class Lcl/santander/smartphone/localizador/Localizador$13;
.super Ljava/util/TimerTask;
.source "Localizador.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->scheduleGeo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Localizador;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$13;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 622
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$13;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$29(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$13;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$29(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->stop_GPS()V

    .line 630
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$13;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Localizador$13;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;
    invoke-static {v0}, Lcl/santander/smartphone/localizador/Localizador;->access$30(Lcl/santander/smartphone/localizador/Localizador;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 634
    :cond_1
    return-void
.end method
