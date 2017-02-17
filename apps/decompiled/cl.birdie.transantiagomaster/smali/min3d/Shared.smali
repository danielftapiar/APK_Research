.class public final Lmin3d/Shared;
.super Ljava/lang/Object;
.source "Shared.java"


# static fields
.field private static _context:Landroid/content/Context;

.field private static _renderer:Lmin3d/core/Renderer;

.field private static _textureManager:Lmin3d/core/TextureManager;


# direct methods
.method public static context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lmin3d/Shared;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public static context(Landroid/content/Context;)V
    .locals 0
    .param p0, "$c"    # Landroid/content/Context;

    .prologue
    .line 23
    sput-object p0, Lmin3d/Shared;->_context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static renderer()Lmin3d/core/Renderer;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmin3d/Shared;->_renderer:Lmin3d/core/Renderer;

    return-object v0
.end method

.method public static renderer(Lmin3d/core/Renderer;)V
    .locals 0
    .param p0, "$r"    # Lmin3d/core/Renderer;

    .prologue
    .line 32
    sput-object p0, Lmin3d/Shared;->_renderer:Lmin3d/core/Renderer;

    .line 33
    return-void
.end method

.method public static textureManager()Lmin3d/core/TextureManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lmin3d/Shared;->_textureManager:Lmin3d/core/TextureManager;

    return-object v0
.end method

.method public static textureManager(Lmin3d/core/TextureManager;)V
    .locals 0
    .param p0, "$bm"    # Lmin3d/core/TextureManager;

    .prologue
    .line 44
    sput-object p0, Lmin3d/Shared;->_textureManager:Lmin3d/core/TextureManager;

    .line 45
    return-void
.end method
