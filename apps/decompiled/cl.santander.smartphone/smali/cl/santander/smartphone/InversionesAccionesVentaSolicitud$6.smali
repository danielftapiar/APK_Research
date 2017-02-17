.class Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaSolicitud.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->loadSpinnerDias()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "_option"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    .line 391
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    invoke-static {v0, p3}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$13(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;I)V

    .line 392
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_continuar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->access$13(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;I)V

    .line 397
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_continuar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
