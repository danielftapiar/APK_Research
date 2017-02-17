.class Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$8;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraSolicitud.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->loadSpinnerAcciones()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

.field private final synthetic val$clacd:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$8;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iput-object p2, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$8;->val$clacd:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$8;->val$clacd:Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    invoke-virtual {v0}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->show()V

    .line 421
    return-void
.end method
