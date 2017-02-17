.class Lcl/santander/smartphone/InversionesAccionesCompraValidar$1;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraValidar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraValidar;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 246
    if-eqz p2, :cond_0

    .line 247
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->condiciones_aceptadas:Z

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar$1;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraValidar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->condiciones_aceptadas:Z

    goto :goto_0
.end method
