.class Lg10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldw<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llw;


# direct methods
.method constructor <init>(Llw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg10;->a:Llw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lkw;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lkw;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg10;->a:Llw;

    invoke-virtual {p1}, Lkw;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Llw;->e(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lg10;->a:Llw;

    invoke-virtual {p1}, Lkw;->i()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Llw;->d(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
