.class public Lpk$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lpk;
    .locals 3

    .line 1
    new-instance v0, Lpk;

    const/16 v1, 0x12c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpk;-><init>(IZ)V

    return-object v0
.end method
