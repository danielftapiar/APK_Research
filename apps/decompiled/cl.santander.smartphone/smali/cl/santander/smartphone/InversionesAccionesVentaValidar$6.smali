.class Lcl/santander/smartphone/InversionesAccionesVentaValidar$6;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaValidar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaValidar;->Validar()V
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
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$6;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar$6;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaValidar;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 492
    return-void
.end method
