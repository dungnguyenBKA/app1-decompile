.class public final enum Lcom/caverock/androidsvg/c$d0$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c$d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/c$d0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/caverock/androidsvg/c$d0$a;

.field public static final enum c:Lcom/caverock/androidsvg/c$d0$a;

.field private static final synthetic d:[Lcom/caverock/androidsvg/c$d0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/c$d0$a;

    const-string v1, "NonZero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/c$d0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/c$d0$a;->b:Lcom/caverock/androidsvg/c$d0$a;

    .line 2
    new-instance v1, Lcom/caverock/androidsvg/c$d0$a;

    const-string v3, "EvenOdd"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/caverock/androidsvg/c$d0$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/c$d0$a;->c:Lcom/caverock/androidsvg/c$d0$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/caverock/androidsvg/c$d0$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/caverock/androidsvg/c$d0$a;->d:[Lcom/caverock/androidsvg/c$d0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/c$d0$a;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/c$d0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/c$d0$a;

    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/c$d0$a;
    .locals 4

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/c$d0$a;->d:[Lcom/caverock/androidsvg/c$d0$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/caverock/androidsvg/c$d0$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
