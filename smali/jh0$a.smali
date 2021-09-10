.class public Ljh0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ldh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Lch0$a;

.field d:Lkh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljh0$a;->e:Ljava/util/Map;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Ljh0$a;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lch0$a;

    invoke-direct {v0}, Lch0$a;-><init>()V

    iput-object v0, p0, Ljh0$a;->c:Lch0$a;

    return-void
.end method

.method constructor <init>(Ljh0;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljh0$a;->e:Ljava/util/Map;

    .line 7
    iget-object v0, p1, Ljh0;->a:Ldh0;

    iput-object v0, p0, Ljh0$a;->a:Ldh0;

    .line 8
    iget-object v0, p1, Ljh0;->b:Ljava/lang/String;

    iput-object v0, p0, Ljh0$a;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Ljh0;->d:Lkh0;

    iput-object v0, p0, Ljh0$a;->d:Lkh0;

    .line 10
    iget-object v0, p1, Ljh0;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Ljh0;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Ljh0$a;->e:Ljava/util/Map;

    .line 13
    iget-object p1, p1, Ljh0;->c:Lch0;

    invoke-virtual {p1}, Lch0;->e()Lch0$a;

    move-result-object p1

    iput-object p1, p0, Ljh0$a;->c:Lch0$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ljh0$a;->c:Lch0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lch0;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p2, p1}, Lch0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Ljh0;
    .locals 2

    .line 1
    iget-object v0, p0, Ljh0$a;->a:Ldh0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljh0;

    invoke-direct {v0, p0}, Ljh0;-><init>(Ljh0$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ljh0$a;->c:Lch0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lch0;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p2, p1}, Lch0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lch0$a;->c(Ljava/lang/String;)Lch0$a;

    .line 6
    iget-object v1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, v0, Lch0$a;->a:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Lch0;)Ljh0$a;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lch0;->e()Lch0$a;

    move-result-object p1

    iput-object p1, p0, Ljh0$a;->c:Lch0$a;

    return-object p0
.end method

.method public e(Ljava/lang/String;Lkh0;)Ljh0$a;
    .locals 2
    .param p2    # Lkh0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "method == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p1}, Landroidx/core/app/b;->o0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " must not have a request body."

    invoke-static {v0, p1, v1}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_5

    const-string v1, "POST"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PUT"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PATCH"

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PROPPATCH"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "REPORT"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " must have a request body."

    invoke-static {v0, p1, v1}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_5
    :goto_3
    iput-object p1, p0, Ljh0$a;->b:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Ljh0$a;->d:Lkh0;

    return-object p0

    .line 13
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;)Ljh0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ljh0$a;->c:Lch0$a;

    invoke-virtual {v0, p1}, Lch0$a;->c(Ljava/lang/String;)Lch0$a;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljh0$a;
    .locals 7

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const-string v4, "ws:"

    move-object v1, p1

    .line 2
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http:"

    .line 3
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https:"

    .line 5
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Ldh0;->i(Ljava/lang/String;)Ldh0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljh0$a;->h(Ldh0;)Ljh0$a;

    return-object p0
.end method

.method public h(Ldh0;)Ljh0$a;
    .locals 1

    const-string v0, "url == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Ljh0$a;->a:Ldh0;

    return-object p0
.end method
