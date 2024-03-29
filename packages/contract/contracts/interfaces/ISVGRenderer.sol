// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

interface ISVGRenderer {
    struct Part {
        bytes image;
        bytes palette;
    }

    struct SVGParams {
        Part[] parts;
        string background;
    }

    function generateSVG(SVGParams memory params)
        external
        view
        returns (string memory svg);

    function generateSVGPart(Part memory part)
        external
        view
        returns (string memory partialSVG);

    function generateSVGParts(Part[] memory parts)
        external
        view
        returns (string memory partialSVG);
}
