.class final Lr10$b;
.super Li20$c$b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li20$c$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li20$c$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lr10$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " filename"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Lr10$b;->b:[B

    if-nez v1, :cond_1

    const-string v1, " contents"

    .line 3
    invoke-static {v0, v1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v0, Lr10;

    iget-object v1, p0, Lr10$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lr10$b;->b:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr10;-><init>(Ljava/lang/String;[BLr10$a;)V

    return-object v0

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b([B)Li20$c$b$a;
    .locals 1

    const-string v0, "Null contents"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lr10$b;->b:[B

    return-object p0
.end method

.method public c(Ljava/lang/String;)Li20$c$b$a;
    .locals 1

    const-string v0, "Null filename"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lr10$b;->a:Ljava/lang/String;

    return-object p0
.end method
