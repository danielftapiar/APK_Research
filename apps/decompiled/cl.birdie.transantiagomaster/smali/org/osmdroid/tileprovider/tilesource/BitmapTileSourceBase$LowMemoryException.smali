.class public final Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;
.super Ljava/lang/Exception;
.source "BitmapTileSourceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowMemoryException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase$LowMemoryException;->this$0:Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;

    .line 150
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method
