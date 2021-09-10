.class public final Lxh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh0;


# instance fields
.field public final a:Lgh0;


# direct methods
.method public constructor <init>(Lgh0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxh0;->a:Lgh0;

    return-void
.end method


# virtual methods
.method public intercept(Leh0$a;)Llh0;
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Lji0;

    .line 2
    invoke-virtual {v0}, Lji0;->i()Ljh0;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lji0;->j()Ldi0;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Ljh0;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v4, p0, Lxh0;->a:Lgh0;

    invoke-virtual {v2, v4, p1, v3}, Ldi0;->h(Lgh0;Leh0$a;Z)Lgi0;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Ldi0;->d()Lzh0;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Lji0;->g(Ljh0;Ldi0;Lgi0;Lzh0;)Llh0;

    move-result-object p1

    return-object p1
.end method
