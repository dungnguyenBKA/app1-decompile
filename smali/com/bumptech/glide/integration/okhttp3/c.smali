.class public Lcom/bumptech/glide/integration/okhttp3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/okhttp3/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzf<",
        "Lsf;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Log0$a;


# direct methods
.method public constructor <init>(Log0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/c;->a:Log0$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lsf;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;
    .locals 0

    .line 1
    check-cast p1, Lsf;

    .line 2
    new-instance p2, Lzf$a;

    new-instance p3, Lcom/bumptech/glide/integration/okhttp3/b;

    iget-object p4, p0, Lcom/bumptech/glide/integration/okhttp3/c;->a:Log0$a;

    invoke-direct {p3, p4, p1}, Lcom/bumptech/glide/integration/okhttp3/b;-><init>(Log0$a;Lsf;)V

    invoke-direct {p2, p1, p3}, Lzf$a;-><init>(Lcom/bumptech/glide/load/g;Luc;)V

    return-object p2
.end method
