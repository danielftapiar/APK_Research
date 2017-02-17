.class public abstract La/a/a/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/g$b;,
        La/a/a/a/a/g$d;,
        La/a/a/a/a/g$c;,
        La/a/a/a/a/g$g;,
        La/a/a/a/a/g$f;,
        La/a/a/a/a/g$e;,
        La/a/a/a/a/g$a;
    }
.end annotation


# static fields
.field public static final a:La/a/a/a/a/g;

.field public static final b:La/a/a/a/a/g;

.field public static final c:La/a/a/a/a/g;

.field public static final d:La/a/a/a/a/g;

.field public static final e:La/a/a/a/a/g;

.field public static final f:La/a/a/a/a/g;

.field public static final g:La/a/a/a/a/g;

.field private static final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/a/a/g$a;

    invoke-direct {v0}, La/a/a/a/a/g$a;-><init>()V

    sput-object v0, La/a/a/a/a/g;->a:La/a/a/a/a/g;

    new-instance v0, La/a/a/a/a/g$c;

    invoke-direct {v0}, La/a/a/a/a/g$c;-><init>()V

    sput-object v0, La/a/a/a/a/g;->b:La/a/a/a/a/g;

    new-instance v0, La/a/a/a/a/g$e;

    invoke-direct {v0}, La/a/a/a/a/g$e;-><init>()V

    sput-object v0, La/a/a/a/a/g;->c:La/a/a/a/a/g;

    new-instance v0, La/a/a/a/a/g$f;

    invoke-direct {v0}, La/a/a/a/a/g$f;-><init>()V

    sput-object v0, La/a/a/a/a/g;->d:La/a/a/a/a/g;

    new-instance v0, La/a/a/a/a/g$g;

    invoke-direct {v0}, La/a/a/a/a/g$g;-><init>()V

    sput-object v0, La/a/a/a/a/g;->e:La/a/a/a/a/g;

    new-instance v0, La/a/a/a/a/g$d;

    invoke-direct {v0}, La/a/a/a/a/g$d;-><init>()V

    sput-object v0, La/a/a/a/a/g;->f:La/a/a/a/a/g;

    new-instance v0, La/a/a/a/a/g$b;

    invoke-direct {v0}, La/a/a/a/a/g$b;-><init>()V

    sput-object v0, La/a/a/a/a/g;->g:La/a/a/a/a/g;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, La/a/a/a/a/g;->h:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, La/a/a/a/a/g;->i:Z

    iput-boolean v1, p0, La/a/a/a/a/g;->j:Z

    iput-boolean v2, p0, La/a/a/a/a/g;->k:Z

    iput-boolean v1, p0, La/a/a/a/a/g;->l:Z

    const-string v0, "["

    iput-object v0, p0, La/a/a/a/a/g;->m:Ljava/lang/String;

    const-string v0, "]"

    iput-object v0, p0, La/a/a/a/a/g;->n:Ljava/lang/String;

    const-string v0, "="

    iput-object v0, p0, La/a/a/a/a/g;->o:Ljava/lang/String;

    iput-boolean v2, p0, La/a/a/a/a/g;->p:Z

    iput-boolean v2, p0, La/a/a/a/a/g;->q:Z

    const-string v0, ","

    iput-object v0, p0, La/a/a/a/a/g;->r:Ljava/lang/String;

    const-string v0, "{"

    iput-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    const-string v0, ","

    iput-object v0, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    iput-boolean v1, p0, La/a/a/a/a/g;->u:Z

    const-string v0, "}"

    iput-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    iput-boolean v1, p0, La/a/a/a/a/g;->w:Z

    const-string v0, "<null>"

    iput-object v0, p0, La/a/a/a/a/g;->x:Ljava/lang/String;

    const-string v0, "<size="

    iput-object v0, p0, La/a/a/a/a/g;->y:Ljava/lang/String;

    const-string v0, ">"

    iput-object v0, p0, La/a/a/a/a/g;->z:Ljava/lang/String;

    const-string v0, "<"

    iput-object v0, p0, La/a/a/a/a/g;->A:Ljava/lang/String;

    const-string v0, ">"

    iput-object v0, p0, La/a/a/a/a/g;->B:Ljava/lang/String;

    return-void
.end method

.method static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, La/a/a/a/a/g;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static a(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, La/a/a/a/a/g;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {}, La/a/a/a/a/g;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, La/a/a/a/a/g;->h:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, La/a/a/a/a/g;->a()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static c(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, La/a/a/a/a/g;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/a/a/g;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, La/a/a/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v1, p0, La/a/a/a/a/g;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v3, :cond_0

    if-lez v4, :cond_0

    if-lt v3, v4, :cond_0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    iget-object v6, p0, La/a/a/a/a/g;->r:Ljava/lang/String;

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    sub-int v0, v3, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g;->c(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;)V

    iget-boolean v0, p0, La/a/a/a/a/g;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, La/a/a/a/a/g;->d(Ljava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p3}, La/a/a/a/d;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g;->c(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p4}, La/a/a/a/a/g;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    invoke-static {p3}, La/a/a/a/a/g;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p3, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    instance-of v1, p3, Ljava/lang/Character;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, La/a/a/a/a/g;->b(Ljava/lang/Object;)V

    :try_start_0
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {p3}, La/a/a/a/a/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {p3}, La/a/a/a/a/g;->c(Ljava/lang/Object;)V

    throw v1

    :cond_2
    :try_start_2
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_4

    if-eqz p4, :cond_3

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    instance-of v1, p3, [J

    if-eqz v1, :cond_6

    if-eqz p4, :cond_5

    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    check-cast v1, [J

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_1

    :cond_5
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    check-cast v1, [J

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_1

    :cond_6
    instance-of v1, p3, [I

    if-eqz v1, :cond_8

    if-eqz p4, :cond_7

    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_1

    :cond_7
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_1

    :cond_8
    instance-of v1, p3, [S

    if-eqz v1, :cond_a

    if-eqz p4, :cond_9

    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    check-cast v1, [S

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_1

    :cond_9
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    check-cast v1, [S

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_1

    :cond_a
    instance-of v1, p3, [B

    if-eqz v1, :cond_c

    if-eqz p4, :cond_b

    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_b
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_c
    instance-of v1, p3, [C

    if-eqz v1, :cond_e

    if-eqz p4, :cond_d

    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    check-cast v1, [C

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_1

    :cond_d
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    check-cast v1, [C

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_1

    :cond_e
    instance-of v1, p3, [D

    if-eqz v1, :cond_10

    if-eqz p4, :cond_f

    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    check-cast v1, [D

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_1

    :cond_f
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    check-cast v1, [D

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_1

    :cond_10
    instance-of v1, p3, [F

    if-eqz v1, :cond_12

    if-eqz p4, :cond_11

    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    check-cast v1, [F

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_1

    :cond_11
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    check-cast v1, [F

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_1

    :cond_12
    instance-of v1, p3, [Z

    if-eqz v1, :cond_14

    if-eqz p4, :cond_13

    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    check-cast v1, [Z

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_1

    :cond_13
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    check-cast v1, [Z

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p4, :cond_15

    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_15
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_16
    if-eqz p4, :cond_17

    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p0, p1, p2, p3}, La/a/a/a/a/g;->c(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 4

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 4

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-wide v2, p3, v0

    invoke-virtual {p0, p1, p2, v2, v3}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-object v1, p3, v0

    if-lez v0, :cond_0

    iget-object v2, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, La/a/a/a/a/g;->u:Z

    invoke-virtual {p0, p1, p2, v1, v2}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/g;->j:Z

    return-void
.end method

.method protected a(Ljava/lang/Boolean;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, La/a/a/a/a/g;->w:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public b(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/g;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;)V

    :cond_0
    invoke-virtual {p0, p1}, La/a/a/a/a/g;->c(Ljava/lang/StringBuffer;)V

    invoke-static {p2}, La/a/a/a/a/g;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/g;->i:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, La/a/a/a/a/g;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v0, p0, La/a/a/a/a/g;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 1

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, La/a/a/a/a/g;->b(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/g;->k:Z

    return-void
.end method

.method protected b()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/g;->l:Z

    return v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->m:Ljava/lang/String;

    return-void
.end method

.method protected c(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected c(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/g;->j:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2}, La/a/a/a/a/g;->b(Ljava/lang/Object;)V

    iget-boolean v0, p0, La/a/a/a/a/g;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/a/g;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected c(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, La/a/a/a/a/g;->d(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected c(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/a/g;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, La/a/a/a/a/g;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected c(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/g;->l:Z

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->n:Ljava/lang/String;

    return-void
.end method

.method protected d(Ljava/lang/StringBuffer;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected d(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p2}, La/a/a/a/a/g;->b(Ljava/lang/Object;)V

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, La/a/a/a/a/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-lez v0, :cond_0

    iget-object v3, p0, La/a/a/a/a/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, La/a/a/a/a/g;->u:Z

    invoke-virtual {p0, p1, p2, v2, v3}, La/a/a/a/a/g;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, La/a/a/a/a/g;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected d(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/g;->i:Z

    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->o:Ljava/lang/String;

    return-void
.end method

.method protected e(Z)V
    .locals 0

    iput-boolean p1, p0, La/a/a/a/a/g;->p:Z

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->r:Ljava/lang/String;

    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/g;->x:Ljava/lang/String;

    return-object v0
.end method

.method protected g(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->x:Ljava/lang/String;

    return-void
.end method

.method protected h(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->y:Ljava/lang/String;

    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->z:Ljava/lang/String;

    return-void
.end method

.method protected j(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->A:Ljava/lang/String;

    return-void
.end method

.method protected k(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, La/a/a/a/a/g;->B:Ljava/lang/String;

    return-void
.end method
