.class Lde/viktorreiser/toolbox/util/ReflectUtils$1;
.super Ljava/util/HashSet;
.source "ReflectUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/util/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 31
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 32
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 33
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 35
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 38
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Lde/viktorreiser/toolbox/util/ReflectUtils$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
