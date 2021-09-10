.class public final Lwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwf$a;,
        Lwf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzf<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwf;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    invoke-static {p1}, Lhd;->a(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lzf$a;
    .locals 1

    .line 1
    check-cast p1, Landroid/net/Uri;

    .line 2
    new-instance p2, Lzf$a;

    new-instance p3, Lxk;

    invoke-direct {p3, p1}, Lxk;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lwf$b;

    iget-object v0, p0, Lwf;->a:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, Lwf$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lzf$a;-><init>(Lcom/bumptech/glide/load/g;Luc;)V

    return-object p2
.end method
