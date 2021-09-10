.class public final enum Lcom/vungle/warren/VungleLogger$LoggerLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/warren/VungleLogger$LoggerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum CRASH:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum ERROR:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum INFO:Lcom/vungle/warren/VungleLogger$LoggerLevel;

.field public static final enum WARNING:Lcom/vungle/warren/VungleLogger$LoggerLevel;


# instance fields
.field private level:I

.field private levelString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "debug"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->DEBUG:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 2
    new-instance v1, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v3, "INFO"

    const/4 v4, 0x1

    const-string v5, "info"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/vungle/warren/VungleLogger$LoggerLevel;->INFO:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 3
    new-instance v3, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v5, "WARNING"

    const/4 v6, 0x2

    const-string v7, "warn"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/vungle/warren/VungleLogger$LoggerLevel;->WARNING:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 4
    new-instance v5, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    const-string v9, "error"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/vungle/warren/VungleLogger$LoggerLevel;->ERROR:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    .line 5
    new-instance v7, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const-string v9, "CRASH"

    const/4 v10, 0x4

    const-string v11, "crash"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/vungle/warren/VungleLogger$LoggerLevel;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/vungle/warren/VungleLogger$LoggerLevel;->CRASH:Lcom/vungle/warren/VungleLogger$LoggerLevel;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/vungle/warren/VungleLogger$LoggerLevel;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/vungle/warren/VungleLogger$LoggerLevel;->$VALUES:[Lcom/vungle/warren/VungleLogger$LoggerLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->level:I

    .line 3
    iput-object p4, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->levelString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/VungleLogger$LoggerLevel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->level:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/warren/VungleLogger$LoggerLevel;
    .locals 1

    .line 1
    const-class v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;

    return-object p0
.end method

.method public static values()[Lcom/vungle/warren/VungleLogger$LoggerLevel;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->$VALUES:[Lcom/vungle/warren/VungleLogger$LoggerLevel;

    invoke-virtual {v0}, [Lcom/vungle/warren/VungleLogger$LoggerLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/warren/VungleLogger$LoggerLevel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleLogger$LoggerLevel;->levelString:Ljava/lang/String;

    return-object v0
.end method
