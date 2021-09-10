.class Lr70$a;
.super Lz60;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr70;->a(Lj60;Lz80;)Lz60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz60<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lz60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz60<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lj60;

.field final synthetic e:Lz80;

.field final synthetic f:Lr70;


# direct methods
.method constructor <init>(Lr70;ZZLj60;Lz80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr70$a;->f:Lr70;

    iput-boolean p2, p0, Lr70$a;->b:Z

    iput-boolean p3, p0, Lr70$a;->c:Z

    iput-object p4, p0, Lr70$a;->d:Lj60;

    iput-object p5, p0, Lr70$a;->e:Lz80;

    invoke-direct {p0}, Lz60;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La90;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La90;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr70$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, La90;->D0()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lr70$a;->a:Lz60;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lr70$a;->d:Lj60;

    iget-object v1, p0, Lr70$a;->f:Lr70;

    iget-object v2, p0, Lr70$a;->e:Lz80;

    invoke-virtual {v0, v1, v2}, Lj60;->f(La70;Lz80;)Lz60;

    move-result-object v0

    iput-object v0, p0, Lr70$a;->a:Lz60;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lz60;->b(La90;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc90;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc90;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lr70$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lc90;->n0()Lc90;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lr70$a;->a:Lz60;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lr70$a;->d:Lj60;

    iget-object v1, p0, Lr70$a;->f:Lr70;

    iget-object v2, p0, Lr70$a;->e:Lz80;

    invoke-virtual {v0, v1, v2}, Lj60;->f(La70;Lz80;)Lz60;

    move-result-object v0

    iput-object v0, p0, Lr70$a;->a:Lz60;

    .line 5
    :goto_0
    invoke-virtual {v0, p1, p2}, Lz60;->c(Lc90;Ljava/lang/Object;)V

    return-void
.end method
