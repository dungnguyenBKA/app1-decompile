.class final Lnv$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lnv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnv;

    invoke-direct {v0}, Lnv;-><init>()V

    sput-object v0, Lnv$a;->a:Lnv;

    return-void
.end method

.method static synthetic a()Lnv;
    .locals 1

    .line 1
    sget-object v0, Lnv$a;->a:Lnv;

    return-object v0
.end method
