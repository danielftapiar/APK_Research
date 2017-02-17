.class public final Lmin3d/vos/Light;
.super Lmin3d/vos/AbstractDirtyManaged;
.source "Light.java"

# interfaces
.implements Lmin3d/interfaces/IDirtyParent;


# instance fields
.field public _attenuation:Lmin3d/vos/Number3dManaged;

.field public _isVisible:Lmin3d/vos/BooleanManaged;

.field public _positionAndTypeBuffer:Ljava/nio/FloatBuffer;

.field public _spotCutoffAngle:Lmin3d/vos/FloatManaged;

.field public _spotExponent:Lmin3d/vos/FloatManaged;

.field private _type:Lmin3d/vos/LightType;

.field public ambient:Lmin3d/vos/Color4Managed;

.field public diffuse:Lmin3d/vos/Color4Managed;

.field public direction:Lmin3d/vos/Number3dManaged;

.field public emissive:Lmin3d/vos/Color4Managed;

.field public position:Lmin3d/vos/Number3dManaged;

.field public specular:Lmin3d/vos/Color4Managed;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v4, 0xff

    const/16 v3, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmin3d/vos/AbstractDirtyManaged;-><init>(Lmin3d/interfaces/IDirtyParent;)V

    .line 36
    new-instance v0, Lmin3d/vos/Color4Managed;

    invoke-direct {v0, v3, v3, v3, p0}, Lmin3d/vos/Color4Managed;-><init>(IIILmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->ambient:Lmin3d/vos/Color4Managed;

    .line 37
    new-instance v0, Lmin3d/vos/Color4Managed;

    invoke-direct {v0, v4, v4, v4, p0}, Lmin3d/vos/Color4Managed;-><init>(IIILmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->diffuse:Lmin3d/vos/Color4Managed;

    .line 38
    new-instance v0, Lmin3d/vos/Color4Managed;

    invoke-direct {v0, v1, v1, v1, p0}, Lmin3d/vos/Color4Managed;-><init>(IIILmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->specular:Lmin3d/vos/Color4Managed;

    .line 39
    new-instance v0, Lmin3d/vos/Color4Managed;

    invoke-direct {v0, v1, v1, v1, p0}, Lmin3d/vos/Color4Managed;-><init>(IIILmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->emissive:Lmin3d/vos/Color4Managed;

    .line 41
    new-instance v0, Lmin3d/vos/Number3dManaged;

    invoke-direct {v0, v2, v5, p0}, Lmin3d/vos/Number3dManaged;-><init>(FFLmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    .line 43
    new-instance v0, Lmin3d/vos/Number3dManaged;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1, p0}, Lmin3d/vos/Number3dManaged;-><init>(FFLmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->direction:Lmin3d/vos/Number3dManaged;

    .line 44
    new-instance v0, Lmin3d/vos/FloatManaged;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {v0, v1, p0}, Lmin3d/vos/FloatManaged;-><init>(FLmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->_spotCutoffAngle:Lmin3d/vos/FloatManaged;

    .line 45
    new-instance v0, Lmin3d/vos/FloatManaged;

    invoke-direct {v0, v2, p0}, Lmin3d/vos/FloatManaged;-><init>(FLmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->_spotExponent:Lmin3d/vos/FloatManaged;

    .line 47
    new-instance v0, Lmin3d/vos/Number3dManaged;

    invoke-direct {v0, v5, v2, p0}, Lmin3d/vos/Number3dManaged;-><init>(FFLmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->_attenuation:Lmin3d/vos/Number3dManaged;

    .line 49
    sget-object v0, Lmin3d/vos/LightType;->DIRECTIONAL:Lmin3d/vos/LightType;

    iput-object v0, p0, Lmin3d/vos/Light;->_type:Lmin3d/vos/LightType;

    .line 51
    new-instance v0, Lmin3d/vos/BooleanManaged;

    invoke-direct {v0, p0}, Lmin3d/vos/BooleanManaged;-><init>(Lmin3d/interfaces/IDirtyParent;)V

    iput-object v0, p0, Lmin3d/vos/Light;->_isVisible:Lmin3d/vos/BooleanManaged;

    .line 53
    invoke-static {v2, v2, v2, v2}, Lmin3d/Utils;->makeFloatBuffer4(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    .line 55
    invoke-virtual {p0}, Lmin3d/vos/Light;->setDirtyFlag()V

    .line 56
    return-void
.end method


# virtual methods
.method public final commitPositionAndTypeBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    iget-object v0, p0, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v1}, Lmin3d/vos/Number3dManaged;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 207
    iget-object v0, p0, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v1}, Lmin3d/vos/Number3dManaged;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 208
    iget-object v0, p0, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v1}, Lmin3d/vos/Number3dManaged;->getZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 209
    iget-object v0, p0, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lmin3d/vos/Light;->_type:Lmin3d/vos/LightType;

    invoke-virtual {v1}, Lmin3d/vos/LightType;->glValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 210
    iget-object v0, p0, Lmin3d/vos/Light;->_positionAndTypeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    return-void
.end method

.method public final onDirty()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lmin3d/vos/Light;->setDirtyFlag()V

    .line 184
    return-void
.end method

.method public final type(Lmin3d/vos/LightType;)V
    .locals 1
    .param p1, "$type"    # Lmin3d/vos/LightType;

    .prologue
    .line 77
    iput-object p1, p0, Lmin3d/vos/Light;->_type:Lmin3d/vos/LightType;

    .line 78
    iget-object v0, p0, Lmin3d/vos/Light;->position:Lmin3d/vos/Number3dManaged;

    invoke-virtual {v0}, Lmin3d/vos/Number3dManaged;->setDirtyFlag()V

    .line 79
    return-void
.end method
