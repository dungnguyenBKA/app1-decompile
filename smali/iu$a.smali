.class final Liu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Liu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Liu;

    invoke-direct {v0}, Liu;-><init>()V

    sput-object v0, Liu$a;->a:Liu;

    return-void
.end method

.method static synthetic a()Liu;
    .locals 1

    .line 1
    sget-object v0, Liu$a;->a:Liu;

    return-object v0
.end method
