.class final enum Lcom/caverock/androidsvg/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/caverock/androidsvg/a$d;

.field public static final enum c:Lcom/caverock/androidsvg/a$d;

.field public static final enum d:Lcom/caverock/androidsvg/a$d;

.field private static final synthetic e:[Lcom/caverock/androidsvg/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/a$d;

    const-string v1, "DESCENDANT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/a$d;->b:Lcom/caverock/androidsvg/a$d;

    .line 2
    new-instance v1, Lcom/caverock/androidsvg/a$d;

    const-string v3, "CHILD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/caverock/androidsvg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/caverock/androidsvg/a$d;->c:Lcom/caverock/androidsvg/a$d;

    .line 3
    new-instance v3, Lcom/caverock/androidsvg/a$d;

    const-string v5, "FOLLOWS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/caverock/androidsvg/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/caverock/androidsvg/a$d;->d:Lcom/caverock/androidsvg/a$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/caverock/androidsvg/a$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/caverock/androidsvg/a$d;->e:[Lcom/caverock/androidsvg/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/a$d;
    .locals 1

    .line 1
    const-class v0, Lcom/caverock/androidsvg/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/a$d;

    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/a$d;
    .locals 4

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/a$d;->e:[Lcom/caverock/androidsvg/a$d;

    array-length v1, v0

    new-array v2, v1, [Lcom/caverock/androidsvg/a$d;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
