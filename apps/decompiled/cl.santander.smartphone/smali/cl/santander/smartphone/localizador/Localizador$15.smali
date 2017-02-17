.class Lcl/santander/smartphone/localizador/Localizador$15;
.super Ljava/lang/Object;
.source "Localizador.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Localizador;->localizaManualmente(Landroid/location/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Localizador;

.field private final synthetic val$direccion:Landroid/location/Address;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Localizador;Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    iput-object p2, p0, Lcl/santander/smartphone/localizador/Localizador$15;->val$direccion:Landroid/location/Address;

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 720
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 721
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    new-instance v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v2}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V

    invoke-static {v1, v2}, Lcl/santander/smartphone/localizador/Localizador;->access$32(Lcl/santander/smartphone/localizador/Localizador;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V

    .line 723
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_estado:I

    .line 724
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador$15;->val$direccion:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    .line 725
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$8(Lcl/santander/smartphone/localizador/Localizador;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Localizador$15;->val$direccion:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    .line 727
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # invokes: Lcl/santander/smartphone/localizador/Localizador;->mostrarPOIS()V
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$9(Lcl/santander/smartphone/localizador/Localizador;)V

    .line 729
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->val$direccion:Landroid/location/Address;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "calle":Ljava/lang/String;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->tv_direccion:Landroid/widget/TextView;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$35(Lcl/santander/smartphone/localizador/Localizador;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->pd:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$26(Lcl/santander/smartphone/localizador/Localizador;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p0, Lcl/santander/smartphone/localizador/Localizador$15;->this$0:Lcl/santander/smartphone/localizador/Localizador;

    # getter for: Lcl/santander/smartphone/localizador/Localizador;->alertdialog:Ljava/lang/Thread;
    invoke-static {v1}, Lcl/santander/smartphone/localizador/Localizador;->access$30(Lcl/santander/smartphone/localizador/Localizador;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 739
    :cond_1
    return-void
.end method
