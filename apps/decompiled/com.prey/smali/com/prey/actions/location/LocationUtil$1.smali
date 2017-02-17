.class final Lcom/prey/actions/location/LocationUtil$1;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/actions/location/LocationUtil;->getPreyLocationPlayService(Landroid/content/Context;Ljava/lang/String;ZLcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$play:Lcom/prey/actions/location/PreyGooglePlayServiceLocation;


# direct methods
.method constructor <init>(Lcom/prey/actions/location/PreyGooglePlayServiceLocation;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/prey/actions/location/LocationUtil$1;->val$play:Lcom/prey/actions/location/PreyGooglePlayServiceLocation;

    iput-object p2, p0, Lcom/prey/actions/location/LocationUtil$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/prey/actions/location/LocationUtil$1;->val$play:Lcom/prey/actions/location/PreyGooglePlayServiceLocation;

    iget-object v1, p0, Lcom/prey/actions/location/LocationUtil$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/prey/actions/location/PreyGooglePlayServiceLocation;->init(Landroid/content/Context;)V

    .line 150
    return-void
.end method
