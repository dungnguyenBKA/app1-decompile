.class La1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lq0;

.field private b:Lq0;

.field private c:I

.field private d:Lq0$a;

.field private e:I


# direct methods
.method public constructor <init>(Lq0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La1$a;->a:Lq0;

    .line 3
    iget-object v0, p1, Lq0;->d:Lq0;

    .line 4
    iput-object v0, p0, La1$a;->b:Lq0;

    .line 5
    invoke-virtual {p1}, Lq0;->c()I

    move-result v0

    iput v0, p0, La1$a;->c:I

    .line 6
    invoke-virtual {p1}, Lq0;->f()Lq0$a;

    move-result-object v0

    iput-object v0, p0, La1$a;->d:Lq0$a;

    .line 7
    invoke-virtual {p1}, Lq0;->b()I

    move-result p1

    iput p1, p0, La1$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Lr0;)V
    .locals 8

    .line 1
    iget-object v0, p0, La1$a;->a:Lq0;

    .line 2
    iget-object v0, v0, Lq0;->c:Lq0$b;

    .line 3
    invoke-virtual {p1, v0}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v1

    .line 4
    iget-object v2, p0, La1$a;->b:Lq0;

    iget v3, p0, La1$a;->c:I

    iget-object v5, p0, La1$a;->d:Lq0$a;

    iget v6, p0, La1$a;->e:I

    const/4 v4, -0x1

    const/4 v7, 0x0

    .line 5
    invoke-virtual/range {v1 .. v7}, Lq0;->a(Lq0;IILq0$a;IZ)Z

    return-void
.end method

.method public b(Lr0;)V
    .locals 1

    .line 1
    iget-object v0, p0, La1$a;->a:Lq0;

    .line 2
    iget-object v0, v0, Lq0;->c:Lq0$b;

    .line 3
    invoke-virtual {p1, v0}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object p1

    iput-object p1, p0, La1$a;->a:Lq0;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Lq0;->d:Lq0;

    .line 5
    iput-object v0, p0, La1$a;->b:Lq0;

    .line 6
    invoke-virtual {p1}, Lq0;->c()I

    move-result p1

    iput p1, p0, La1$a;->c:I

    .line 7
    iget-object p1, p0, La1$a;->a:Lq0;

    invoke-virtual {p1}, Lq0;->f()Lq0$a;

    move-result-object p1

    iput-object p1, p0, La1$a;->d:Lq0$a;

    .line 8
    iget-object p1, p0, La1$a;->a:Lq0;

    invoke-virtual {p1}, Lq0;->b()I

    move-result p1

    iput p1, p0, La1$a;->e:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, La1$a;->b:Lq0;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, La1$a;->c:I

    .line 11
    sget-object v0, Lq0$a;->c:Lq0$a;

    iput-object v0, p0, La1$a;->d:Lq0$a;

    .line 12
    iput p1, p0, La1$a;->e:I

    :goto_0
    return-void
.end method
