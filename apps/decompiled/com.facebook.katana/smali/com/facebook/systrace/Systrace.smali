.class public Lcom/facebook/systrace/Systrace;
.super Ljava/lang/Object;
.source "Systrace.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->a()V

    .line 70
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->b()V

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/systrace/SystraceMetadata;->a()V

    .line 82
    return-void
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->a()V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p2}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 167
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {p4, p5}, Lcom/facebook/systrace/FbSystrace;->a(J)J

    move-result-wide v0

    .line 171
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Lcom/facebook/systrace/TraceListener;)V
    .locals 0

    .prologue
    .line 77
    invoke-static {p0}, Lcom/facebook/systrace/TraceConfig;->a(Lcom/facebook/systrace/TraceListener;)V

    .line 78
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V
    .locals 2

    .prologue
    .line 258
    const-wide/16 v0, 0x100

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, ""

    invoke-virtual {p1}, Lcom/facebook/systrace/Systrace$EventScope;->getCode()C

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 244
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static b(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static b(JLjava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 226
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {p4, p5}, Lcom/facebook/systrace/FbSystrace;->a(J)J

    move-result-wide v0

    .line 230
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static b(J)Z
    .locals 2

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceConfig;->a(J)Z

    move-result v0

    return v0
.end method

.method public static c(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public static d(JLjava/lang/String;I)V
    .locals 2

    .prologue
    .line 273
    invoke-static {p0, p1}, Lcom/facebook/systrace/Systrace;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-static {p2, p3}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method
