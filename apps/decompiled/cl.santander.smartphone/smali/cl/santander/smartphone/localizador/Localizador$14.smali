.class Lcl/santander/smartphone/localizador/Localizador$14;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->localizaAutomaticamente()V
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
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 654
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    new-instance v5, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v6, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iget-object v6, v6, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    iget-object v7, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-static {v4, v5}, Lcl/santander/smartphone/localizador/Localizador;->access$31(Lcl/santander/smartphone/localizador/Localizador;Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    .line 655
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$29(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->Init_GPS()V

    .line 656
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$29(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v4

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-virtual {v4, v5, v6}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->setPrecision(D)V

    .line 657
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    new-instance v5, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v5}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V

    invoke-static {v4, v5}, Lcl/santander/smartphone/localizador/Localizador;->access$32(Lcl/santander/smartphone/localizador/Localizador;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V

    .line 658
    const/4 v2, -0x1

    .line 660
    .local v2, "code":I
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iget-object v4, v4, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4}, Lcl/santander/smartphone/Utils;->isNetworkAvailable(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->scheduleGeo()V
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$33(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 663
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$29(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v5}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->GetLocation(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)I

    move-result v2

    .line 665
    :cond_0
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$29(Lcl/santander/smartphone/localizador/Localizador;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->stop_GPS()V

    .line 666
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcl/santander/smartphone/localizador/Localizador;->access$31(Lcl/santander/smartphone/localizador/Localizador;Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;)V

    .line 670
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 671
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 672
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$30(Lcl/santander/smartphone/localizador/Localizador;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 673
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->localiza:Ljava/util/concurrent/Semaphore;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$34(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 677
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->localiza:Ljava/util/concurrent/Semaphore;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$34(Lcl/santander/smartphone/localizador/Localizador;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_0
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->mostrarPOIS()V
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$9(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 687
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iget-object v5, v5, Lcl/santander/smartphone/localizador/Localizador;->fa:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4, v5}, Luk/co/santander/santanderUK/famtec/android/geolocation/GeoLocation;->getLocationInfo(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v1

    .line 688
    .local v1, "calles":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const-string v0, ""

    .line 689
    .local v0, "calle":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 690
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4, v8}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    :cond_2
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->tv_direccion:Landroid/widget/TextView;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$35(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    .end local v0    # "calle":Ljava/lang/String;
    .end local v1    # "calles":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_3
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 697
    iget-object v4, p0, Lcl/santander/smartphone/localizador/Localizador$14;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;
    invoke-static {v4}, Lcl/santander/smartphone/localizador/Localizador;->access$30(Lcl/santander/smartphone/localizador/Localizador;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 702
    :cond_4
    return-void

    .line 678
    :catch_0
    move-exception v3

    .line 680
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
