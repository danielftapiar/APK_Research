.class Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$1;
.super Ljava/lang/Object;
.source "InversionesAccionesVentaSolicitud.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->SolicitaVentaAcciones()V
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
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$1;->this$0:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 128
    return-void
.end method
