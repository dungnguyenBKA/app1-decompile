.class public Lvi0$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lzj0;

.field d:Lyj0;

.field e:Lvi0$j;

.field f:I


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lvi0$j;->a:Lvi0$j;

    iput-object p1, p0, Lvi0$h;->e:Lvi0$j;

    return-void
.end method


# virtual methods
.method public a()Lvi0;
    .locals 1

    .line 1
    new-instance v0, Lvi0;

    invoke-direct {v0, p0}, Lvi0;-><init>(Lvi0$h;)V

    return-object v0
.end method

.method public b(Lvi0$j;)Lvi0$h;
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0$h;->e:Lvi0$j;

    return-object p0
.end method

.method public c(I)Lvi0$h;
    .locals 0

    .line 1
    iput p1, p0, Lvi0$h;->f:I

    return-object p0
.end method

.method public d(Ljava/net/Socket;Ljava/lang/String;Lzj0;Lyj0;)Lvi0$h;
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0$h;->a:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Lvi0$h;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lvi0$h;->c:Lzj0;

    .line 4
    iput-object p4, p0, Lvi0$h;->d:Lyj0;

    return-object p0
.end method
