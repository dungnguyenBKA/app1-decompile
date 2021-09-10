.class public Lcom/caverock/androidsvg/c$f;
.super Lcom/caverock/androidsvg/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "f"
.end annotation


# static fields
.field private static b:Lcom/caverock/androidsvg/c$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/c$f;

    invoke-direct {v0}, Lcom/caverock/androidsvg/c$f;-><init>()V

    sput-object v0, Lcom/caverock/androidsvg/c$f;->b:Lcom/caverock/androidsvg/c$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/c$n0;-><init>()V

    return-void
.end method

.method public static a()Lcom/caverock/androidsvg/c$f;
    .locals 1

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/c$f;->b:Lcom/caverock/androidsvg/c$f;

    return-object v0
.end method
