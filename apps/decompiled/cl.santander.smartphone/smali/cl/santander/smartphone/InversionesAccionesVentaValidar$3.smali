.class Lcl/santander/smartphone/InversionesAccionesVentaValidar$3;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaValidar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaValidar;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$3;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    # invokes: Lcl/santander/smartphone/InversionesAccionesVentaValidar;->Confirmar()V
    invoke-static {v0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->access$0(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 250
    return-void
.end method
