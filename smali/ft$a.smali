.class final Lft$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lft;

    invoke-direct {v0}, Lft;-><init>()V

    sput-object v0, Lft$a;->a:Lft;

    return-void
.end method

.method static synthetic a()Lft;
    .locals 1

    .line 1
    sget-object v0, Lft$a;->a:Lft;

    return-object v0
.end method
