.class final Lhu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lhu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhu;

    invoke-direct {v0}, Lhu;-><init>()V

    sput-object v0, Lhu$a;->a:Lhu;

    return-void
.end method

.method static synthetic a()Lhu;
    .locals 1

    .line 1
    sget-object v0, Lhu$a;->a:Lhu;

    return-object v0
.end method
