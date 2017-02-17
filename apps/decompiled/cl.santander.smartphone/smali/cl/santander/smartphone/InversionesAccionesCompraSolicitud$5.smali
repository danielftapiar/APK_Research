.class Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$5;
.super Ljava/lang/Object;
.source "InversionesAccionesCompraSolicitud.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->TieneRiesgo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$5;->this$0:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 329
    return-void
.end method
