.class public Lcom/vungle/warren/model/JsonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsBoolean(Lp60;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp60;->e()Ls60;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object p0

    invoke-virtual {p0}, Lp60;->a()Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getAsObject(Lp60;Ljava/lang/String;)Ls60;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp60;->e()Ls60;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object p0

    invoke-virtual {p0}, Lp60;->e()Ls60;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAsString(Lp60;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp60;->e()Ls60;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object p0

    invoke-virtual {p0}, Lp60;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static hasNonNull(Lp60;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    instance-of v1, p0, Lr60;

    if-nez v1, :cond_1

    .line 2
    instance-of v1, p0, Ls60;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lp60;->e()Ls60;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Ls60;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    instance-of p0, p0, Lr60;

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
