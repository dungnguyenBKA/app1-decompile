.class public final enum Lcom/caverock/androidsvg/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/caverock/androidsvg/b$b;

.field public static final enum c:Lcom/caverock/androidsvg/b$b;

.field private static final synthetic d:[Lcom/caverock/androidsvg/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/b$b;

    const-string v1, "Meet"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/b$b;-><init>(Ljava/lang/String;I)V

    .line 2
    sput-object v0, Lcom/caverock/androidsvg/b$b;->b:Lcom/caverock/androidsvg/b$b;

    .line 3
    new-instance v1, Lcom/caverock/androidsvg/b$b;

    const-string v3, "Slice"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/caverock/androidsvg/b$b;-><init>(Ljava/lang/String;I)V

    .line 4
    sput-object v1, Lcom/caverock/androidsvg/b$b;->c:Lcom/caverock/androidsvg/b$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/caverock/androidsvg/b$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 5
    sput-object v3, Lcom/caverock/androidsvg/b$b;->d:[Lcom/caverock/androidsvg/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/b$b;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/b$b;

    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/b$b;
    .locals 4

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/b$b;->d:[Lcom/caverock/androidsvg/b$b;

    array-length v1, v0

    new-array v2, v1, [Lcom/caverock/androidsvg/b$b;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
