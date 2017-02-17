.class Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaSolicitud.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->rellenaPrecioFinal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 469
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 466
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->calculaPrecioFinal()D
    invoke-static {v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$10(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$11(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;D)V

    .line 460
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_monto_final_venta:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->calculaPrecioFinal()D
    invoke-static {v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$10(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method
