============================
NEStonia Documentation v0.03
============================

Brad Taylor
BTTD Group
05/22/2025


 1. Overview
 2. Features
 3. Resources
 4. Ordering info
 5. Lead Exposure
 6. 3.7 V LiPo Battery
 7. Liability
 8. Regulatory Compliance
 9. Privacy and Shipping
10. Licensing info


1. Overview

    NEStonia is intended as a general-purpose full-duplex USB audio interface device, that has a long-term mission to bridge MIDI functionality over to NES and Family Computer cartridge sound hardware.  The end goal is to re-purpose millions of these after-market cartridges and RAM adapters, and expose their synth hardware via a general MIDI interface, using NEStonia's powerful STM32 microcontroller as the muscle.  There are also stereo MEMS microphones on NEStonia allowing the unit to double up as a general-purpose voice recorder.

    File List (16)
    --------------
    gain-wheel.zip              3D model for the stereo gain wheel assembly (OBJ)
    NEStonia-15-BOM.html        List of NEStonia's parts, board references and supplier links
    NEStonia-15.pdf             NEStonia-15 schematic diagram
    NEStonia-15-(xyz).png       NEStonia 3D renderings with parts
    NEStonia-early-concept.zip  Early 3D model of NEStonia's outer shell (OBJ)
    NEStonia-twin-slot-.png     3D renderings of a NEStonia future expansion for direct Family Computer cartridge support
    NEStune-z.png               3D renderings of a NEStonia future companion PCB for MP3 file playback
    LICENSE                     The legal skinny on NEStonia-15 PCB manufacturing
    readme.txt                  This file

    ⚠️ This repo is for **documentation and educational purposes only**.
    📦 PCB manufacturing files are **not** included.
    💼 Commercial use of the NEStonia PCB layout requires a license and royalty agreement.


2. Features

    BT  1^      14500 LiPo 3.7 Volt 1200 mAh rechargeable unit battery, and thermal sensor.
    D   1       RGB system LED indicator.  Indicates when the unit is charging, and when the NES cartridge port is energized.
    D   5-6     Left + right level/clip BI-LED indicators (green/red).
    D   7       MIC -> Cartridge line-in LED indicator.
    D   8       1/4" line in -> Cartridge line-in LED indicator.
    J   1       72-pin NES cartridge connector (a future NEStonia update will include a Family Computer slot as well).  Supports 3 audio lines out, and two audio lines into the cart, as well as USB, and serial wire debug lines for a STM32- based future companion MP3 player NEStune.
    J   2*      1/4" stereo line in, +/- 12 Volt tolerant.
    J   3*      1/4" mono/stereo line-out, +/- 2.8 V-pp max.
    J   4       MIDI-IN port with opto-isolated DFU function for the micro, and serial wire debug on the non-standard MIDI-DIN pins.
    J   5       MIDI-OUT (or THRU) port, with direct access to all 3 lines out of the cartridge on the non-standard MIDI-DIN pins.
    MK  1-2     Built-in stereo MEMS Microphones.
    RV 10+      Line-out stereo gain wheel, unity gain in center of dial.
    RV 11+      Line-in stereo gain wheel, unity gain in center of dial.
    SW  1       Integrated LED tactile switch, yellow, intended for line-out MUTE function.
    SW  2       Integrated LED tactile switch, green, intended for line-out USB function.
    SW  3       Integrated LED tactile switch, green, intended for line-out CART function.
    SW  4       Integrated LED tactile switch, green, intended for line-in to line-out function.
    SW  5       Integrated LED tactile switch, green, intended for line-out stereo MIC function.
    SW  6       Integrated LED tactile switch, white, intended for power cycling NEStonia.
    SW  7       Line input coupling (AC or DC coupling is possible, for most audio applications you'll want to use AC coupling).
    SW  8       Enable DFU over MIDI-IN, keep this setting disabled when not in use.
    SW  9       Microphone-to-MIDI-out switch, brings NEStonia's stereo microphone lines to two MIDI-OUT pins and can be disabled.
    SW 10       Stereo/mono line-out select.  Effectively disconnects the ring (right channel) from the line out jack.
    U   9       Right USB-C charge port (data lines can also be routed into the cartridge).
    U  10       Left USB-C port connected to the STM32 micro, capable of 1.5 amp power delivery.
    U  24-25    Line out monitor select, 8 sources.
    U  28       ST Microelectronics STM32H562 microcontroller running at 250 MHz.  Has a general-purpose DMA controller built in to it for bus-mastering the NES/FC ports without CPU contention.

    ^ Two AA battery spring contacts are bent at 90 degrees by the leads to solder into the NEStonia mainboard, and be centered with the battery pads on RV10 and RV11 when installed.
    * The 1/4" plugs share a footprint with a 3.5 mm headphone plug, so you can pick between the size you prefer on both sides of NEStonia, but you can not populate both size parts simultaneously.
    + The RV10 and RV11 assemblies require trimmed potentiometer leads and kapton tape to cover the potentiometer through-holes adjacent to the battery pads; it is a design flaw that will be corrected with NEStonia-16.


3. Resources.

    BTTD Group contact:         bradjoeltaylor@gmail.com
    Github link:                https://github.com/digilogistist/NEStonia
    Official NEStonia Channel:  https://www.youtube.com/@OfficialNEStoniaChannel
    Digikey parts:              www.digikey.ca/en/mylists/list/VCLNEV7YCW
    Mouser parts:               www.mouser.com/Tools/Project/Share?AccessID=467c7880bc
    72-pin connectors:          https://www.aliexpress.com/item/1005007839326951.html
    Batteries:                  https://www.aliexpress.com/item/1005008443604496.html


4. Ordering NEStonia.

    NEStonia PCB Donation: $50 CAD per NEStonia PCB + $20 CAD tracked* shipping = $70 CAD (approx. $36 USD + $14 USD = $50 USD)

    NEStonia ships as an unpopulated two-layer printed circuit board with HASL; please use the parts links to order any quantity of most the bill of materials to ease procurement.  Each PCB includes a pair of 3D-printed stereo gain wheels for the line-in and line-out gain control.

    All donations may be accepted and auto-deposited in Canadian dollars by Interac e-Transfer with the bradjoeltaylor@gmail.com email address. U.S. donors are welcome to convert currency via their bank or service of choice.

    Please include your name, mailing address (please, no P.O. Box addresses), daytime phone number, requested quantity of NEStonia PCBs, and preference on stereo gain wheel color (black or gold) in a private email to bradjoeltaylor@gmail.com when making a donation.

    * Tracking available only for U.S. and Canadian residents.

    Address Verification Notice:

    To ensure your order arrives safely, especially when using international or third-party couriers, we may verify shipping addresses through publicly available tools such as Google Maps. If we’re unable to confirm the accuracy of your address, we may reach out before shipping to avoid delays or lost packages.


5. Lead Exposure.

    This PCB is manufactured using lead-based HASL (Hot Air Solder Leveling) finish.

    Contains lead (Pb), which is known to be toxic if ingested or improperly handled.

    Avoid prolonged skin contact, and wash hands after handling.

    Not suitable for children or use in food-related projects.

    Always assemble and use in a well-ventilated workspace.

    By receiving or using this board, you acknowledge and accept the risks associated with lead-containing materials.


6. 3.7 V LiPo Battery.

    The NEStonia board may be powered by a 3.7V LiPo (Lithium Polymer) rechargeable battery.

    Improper use of LiPo batteries may cause fire, explosion, or personal injury.

    Do not expose batteries to direct sunlight; do not place in a fire; do not submerge into a liquid.

    Avoid the excessive application of physical shock to the batteries.

    Batteries are not intended to come into contact with children; if the battery is swallowed seek medical attention immediately.

    Do not try to disassemble or modify the battery.  Do not place the batteries where they can make contact with random metal objects.

    Never charge unattended.  Never install the battery backwards.  Do not attempt to defeat the thermal sensor TH1.

    Be sure the RV1 potentiometer is set so the current limit matches your battery's charge capacity.

    Use only brand-name LiPo batteries, and check the comments sections to verify the mAh capacity before procuring.

    Do not puncture, crush, short-circuit, overcharge, or expose to heat.

    Dispose of according to local hazardous waste guidelines.

    By using a LiPo battery with NEStonia, you accept full responsibility for its safe handling, operation and disposal.


7. Liability.

    This product is provided as-is for hobbyist and educational purposes. By receiving a NEStonia board from the BTTD Group, you agree that:

    * You assume full responsibility for parts procurement, assembly, handling, operation and disposal of the board.

    * The BTTD Group makes no guarantee regarding functionality, compatibility, or safety.

    * The BTTD Group is not liable for any damage to your equipment, personal injury, or financial loss resulting from the use or misuse of this product.

    This is currently a non-commercial, community-driven project; no warranty, no returns, and no technical support is implied or guaranteed.

    Use at your own risk. By proceeding with a Donation to the BTTD Group and receiving a NEStonia PCB, you agree to these terms.


8. Regulatory Compliance.

    This device has not been certified by the FCC (U.S.) or CRTC (Canada) and is provided for educational, experimental, and hobbyist use only.

    It may generate electromagnetic interference (EMI) due to onboard microcontrollers, oscillators, or other circuitry. As such:

        United States: This device is not authorized under the rules of FCC Part 15. Operation may be subject to the condition that the device does not cause harmful interference and must accept any interference received. Unauthorized modifications or usage may void the user’s authority to operate the equipment.

        Canada: This device is not certified under Innovation, Science and Economic Development Canada (ISED) regulations (formerly overseen by the CRTC). Operation is permitted for personal, non-commercial use provided it does not cause or is not susceptible to radio interference as defined under Canadian law.

    By assembling and operating the NEStonia PCB, you agree to:

        * Accept full responsibility for its use in accordance with local radio and electronics regulations.

        * Use the board only in environments where unintentional emissions are acceptable (e.g., personal workbenches, educational labs).

        * Avoid deploying this board in commercial, broadcast, or mission-critical environments.

    ⚠️ This product is currently not a consumer device, and is not intended for resale as a finished product.


 9. Privacy and Shipping.

    At the BTTD Group, we recognize the importance of safeguarding the personal information of our customers. This Privacy and Shipping Statement outlines our practices regarding data collection, usage, and disclosure in connection with order fulfillment and delivery services.

    a) Data Collection and Use.

        We collect only the minimum personally identifiable information necessary to fulfill customer orders, including:

            * Full name

            * Shipping address

            * Contact information (e.g., phone number or email, when required for delivery)

        This information is used exclusively for the purpose of processing and delivering your order. The BTTD Group does not sell, lease, or otherwise share customer data with third parties for advertising, profiling, or unrelated commercial purposes.

    b) Use of Third-Party Shipping Providers.

        In the event of a service disruption involving federally operated postal systems (e.g., a Canada Post labor strike), the BTTD Group may, at its discretion, utilize third-party logistics and shipping providers to ensure timely delivery of customer orders.

        When such alternatives are employed:

            * Only information strictly required for delivery is transmitted to the third-party service.

            * Customer data shared with third-party shipping providers is retained only for the duration necessary to complete fulfillment and resolve any shipping issues.

            * The BTTD Group undertakes reasonable efforts to remove or anonymize all customer data stored on third-party logistics platforms immediately upon the confirmation of delivery or fulfillment of the order.

    c) Data Retention and Erasure.

        Customer data is retained only for as long as required to fulfill the original transaction, comply with legal obligations, or resolve disputes. Upon request, the BTTD Group will promptly delete any stored personal data related to completed orders, subject to applicable legal and accounting requirements.

    d) Data Security and Integrity.

        All reasonable technical and organizational measures are taken to protect customer information against unauthorized access, loss, misuse, or alteration. Our systems and procedures are periodically reviewed and updated to ensure compliance with privacy standards and best practices.

    e) Questions or Requests.

        To submit a data deletion request, or if you have questions regarding this policy, please contact us at bradjoeltaylor@gmail.com.


10. Licensing info.

    If you are an electronics manufacturer interested in building fully-assembled NEStonias, please read license.txt and contact the BTTD Group at bradjoeltaylor@gmail.com.

    Commercial reproduction or distribution of the NEStonia PCB without prior consent from the BTTD group is strictly prohibited.


Copyright © 2025 Brad Taylor
Copyright © 2025 BTTD Group
All rights reserved
