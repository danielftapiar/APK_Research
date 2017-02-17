.class public final Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;
.super Ljava/lang/Exception;
.source "MapTileModuleProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CantContinueException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$CantContinueException;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 293
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 294
    return-void
.end method
